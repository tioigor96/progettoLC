//
// Created by igor on 09/08/20.
//

#include <stdio.h>

int main(){

    FILE *file=fopen("/home/igor/Scrivania/haskell/progettoLC/parte 4/test3/ti.conf","r");
    char c;
    while(fscanf(file,"%c",&c)!= -1) {
        printf("%d\t%c\n",c,c);
    }
//    fprintf(file,"%c",EOF);
//    fclose(file);

    return 0;
}