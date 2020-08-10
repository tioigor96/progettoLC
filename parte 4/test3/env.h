//
// Created by igor on 09/08/20.
//
#ifndef TEST2_ENV_H
#define TEST2_ENV_H


#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "Absyn.h"


struct _var {
    char *name;
    char *value;
    struct _var *next;
};
typedef struct _var var;

struct _env {
    char *name;
    var *vars;
    struct _env *next;
};
typedef struct _env env;

extern env *envs;
extern var *vars;
extern int depth;

env *make_env(char *name);

var *make_var(char *name, char *value);

env *addEnv(char *name, env *old);

var *addVar(var *vars, char *name, char *value);

env *getEnv(env *env, char *name);

var *getVar(var *vars, char *name);

void printEnv(env *env);

char* strValue(Value _p_);

#endif //TEST2_ENV_H
