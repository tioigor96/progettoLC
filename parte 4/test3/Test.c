/*** Compiler Front-End Test automatically generated by the BNF Converter ***/
/*                                                                          */
/* This test will parse a file, print the abstract syntax tree, and then    */
/* pretty-print the result.                                                 */
/*                                                                          */
/****************************************************************************/

#include <stdio.h>
#include <stdlib.h>

#include "Parser.h"
#include "Printer.h"
#include "Absyn.h"
#include "env.h"

int main(int argc, char **argv) {
    FILE *input;
    S parse_tree;
    if (argc > 1) {
        input = fopen(argv[1], "r");
        if (!input) {
            fprintf(stderr, "Error opening input file.\n");
            exit(1);
        }
    } else input = stdin;
    /* The default entry point is used. For other options see Parser.h */
    parse_tree = pS(input);
    if (parse_tree) {
//    printf("\nParse Succesful!\n");
//    printf("\n[Abstract Syntax]\n");
//    printf("%s\n\n", showS(parse_tree));
//    printf("[Linearized Tree]\n");
        printf(" ");    //per sistemare lo spazio in testa!
        printf("%s\n\n", printS(parse_tree));
        printEnv(envs);
        return 0;
    }

    return 1;
}

