#include "env.h"

env *envs = NULL;
var *vars = NULL;

env *make_env(char *name) {
    env *temp = calloc(1, sizeof(env));
    temp->name = name;
    return temp;
}

var *make_var(char *name, char *value) {
    var *tmp = calloc(1, sizeof(var));
    tmp->name = name;
    tmp->value = value;
    return tmp;
}

env *addEnv(char *name, env *old) {
    env *new = make_env(name);
    new->next = old;
    return new;
}

var *addVar(var *vars, char *name, char *value) {
    var *new = make_var(name, value);
    new->next = vars;
    return new;
}

env *getEnv(env *env, char *name) {
    for (; env; env = env->next) {
        if (strcmp(env->name, name) == 0)
            return env;
    }

    return NULL;
}

var *getVar(var *vars, char *name) {
    for (; vars; vars = vars->next) {
        if (strcmp(vars->name, name) == 0)
            return vars;
    }
    return NULL;
}

void printEnv(env *env) {
    for (; env; env = env->next) {
        printf("EnvName:\t%s\n", env->name);
        var *vars = env->vars;
        for (; vars; vars = vars->next) {
            printf("\t\t%s\t%s\n", vars->name,vars->value);
        }
    }
}


char* strValue(Value _p_) {
    char *str;
    switch (_p_->kind) {
        case is_Val:
            str = strdup(_p_->u.val_.string_);
            break;

        case is_ValI:
            str = calloc(16, sizeof(char));
            sprintf(str, "%d", _p_->u.vali_.integer_);
            break;

        case is_ValD:
            str = calloc(16, sizeof(char));
            sprintf(str, "%g", _p_->u.vald_.double_);
            break;

        case is_ValB:
            if (_p_->u.valb_.tbool_->kind == is_VTrue) {
                str = strdup("true");
            } else {
                str = strdup("false");
            }
            break;

        case is_ValV:
            str=strdup(_p_->u.valv_.variablelocal_);
            break;

        case is_ValG:
            str=strdup(_p_->u.valg_.variableglobal_);
            break;

        default:
            exit(1);
    }

    return str;
}