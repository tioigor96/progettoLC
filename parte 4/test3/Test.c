/*** Compiler Front-End Test automatically generated by the BNF Converter ***/
/*                                                                          */
/* This test will parse a file, print the abstract syntax tree, and then    */
/* pretty-print the result.                                                 */
/*                                                                          */
/****************************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>

#include "Parser.h"
#include "Printer.h"
#include "Absyn.h"
#include "env.h"

//#ifdef YYDEBUG
//bnf1debug=1;
//#endif

FILE *input = NULL;

char printFile = 0;
int fo = -1;
char printen = 0;
char *filename = NULL;

void analizeParms(int argc, char **argv) {

    int i;
    int match;
    for (i = 1; i < argc; i++) {
        match = 0;
        if (strcmp("-i", argv[i]) == 0) { //set input
            input = fopen(argv[++i], "r");
            if (!input) {
                fprintf(stderr, "Error opening input file.\n");
                exit(1);
            }
            match = 1;
        }

        if (strcmp("-o", argv[i]) == 0) {       //redirect output
            printFile = 1;
            fo = open(argv[++i], O_WRONLY | O_CREAT | O_TRUNC, 0666);
            if (fo < 0) {
                fprintf(stderr, "Error opening output file.\n");
                exit(1);
            }
            filename = argv[i];
            match = 1;
        }

        if (strcmp("-e", argv[i]) == 0) {
            printen = 1;
            match = 1;
        }

        if (!match) {       //never match a option
            fprintf(stderr, "Option %s was not recognized!\n", argv[i]);
            fprintf(stderr, "Usage:\n");
            fprintf(stderr, "\tparte4 {[-i FileIn] | [-o FileOut] | [-e]}\n");
            fprintf(stderr, "\t\t-i FileIn: if set as source the specified file;\n");
            fprintf(stderr, "\t\t\tSpecify if the source is STDIN or a file;\n");
            fprintf(stderr, "\t\t-o FileOut: print the pretty print file in the specified file;\n");
            fprintf(stderr, "\t\t-e: print in the stdout sections and fields read in the input.\n");

            exit(1);
        }

    }

    if (!input) {            //set input from stdin
        input = stdin;
    }

}

void verifyEnv(env *env1) {
    env *e = env1;
    for (; e; e = e->next) {
        var *v = e->vars;
        for (; v; v = v->next) {

            char *fvalue = v->value;

            if (fvalue[0] == '$') {
                char *varname = strchr(fvalue, '.');
                if (varname) {  //var glob
                    int len = strlen(fvalue) - strlen(varname);
                    char *envname = calloc(len, sizeof(char));
                    memcpy(envname, fvalue + 1, len - 1);
                    envname[len] = 0;
                    varname++;

                    env *lim = getEnv(env1, envname);

                    if (!lim) {
                        fprintf(stderr, "Error! not exist section name \"%s\" at \"%s\"!\n", envname, v->value);
                        exit(1);
                    }

                    var *var1 = getVar(lim->vars, varname);

                    if (!var1) {
                        fprintf(stderr, "Error! not exist field name \"%s\" at \"%s\"!\n", varname, v->value);
                        exit(1);
                    }

                    //riferimento esiste
                    free(v->value);
                    v->value = var1->value;

                } else {  //var loc
                    var *var1 = e->vars;
                    char *varname = calloc(strlen(v->value) - 1, sizeof(char));
                    memcpy(varname, v->value + 1, strlen(v->value) - 1);

                    var1 = getVar(var1, varname);

                    if (!var1) {
                        fprintf(stderr, "Error! not exist field name \"%s\" in \"%s\" section!\n", v->value, e->name);
                        exit(1);
                    }

                    //riferimento esiste
                    free(v->value);
                    v->value = var1->value;
                }
            }
        }
    }
}


int main(int argc, char **argv) {
    analizeParms(argc, argv);

    S parse_tree;

    parse_tree = pS(input);
    if (parse_tree) {

        verifyEnv(envs);

        int realstd;
        if (printFile) {  //switch stdout to file
            realstd = dup(STDOUT_FILENO);
            printf("Parse correctly finish! Print to \"%s\".\n\n", filename);
            dup2(fo, STDOUT_FILENO);
        }

        printf(" %s\n\n", printS(parse_tree));

        if (printFile) { //switch from file to stdout
            dup2(realstd, STDOUT_FILENO);
            close(fo);
        }

        if (printen) {
            printf("\t====  environment  ====\n");
            printEnv(envs);
        }
        return 0;
    }

    return 1;
}

