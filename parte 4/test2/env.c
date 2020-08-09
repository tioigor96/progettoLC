#include "env.h"

/*
typedef struct list_t list;

typedef struct {
    char *value;
    list *list;
} node;


struct list_t {
    list *next;
    node *n;
};

typedef struct {
    char *name;
    list *vars;
} env;

typedef struct {
    char *name;
    list *next;
    char *value;
} vars;


env *env_create(char *name, list *vars) {
    env *temp = malloc(sizeof(env));
    temp->name = name;
    temp->vars = *vars;
    return temp;
}

vars *vars_create(char *name, list *next, char *value) {
    vars *temp = malloc(sizeof(vars));
    temp->name = name;
    temp->next = *next;
    temp->value = value;
    return temp;
}

void env_add(list **l, env *e) {
    if (*l == NULL) {
        *l = malloc(sizeof(list));
        (*l)->next = NULL;
        (*l)->n = e;
    } else {
        list *temp = *l;
        while (temp->next != NULL) {
            temp = temp->next;
        }
        temp->next = malloc(sizeof(list));
        temp->next->next = NULL;
        temp->next->n = e;
    }
}

void vars_add(env *e, vars *vars) {
    if (e->vars == NULL) {
        vars
        temp = malloc(sizeof(list));
        temp->next = NULL;
        temp->name = vars->name;
        temp->value = vars->value;
    } else {
        vars
        var_list = e->vars;
        vars->next = e->vars;
        e->vars = *vars;
    }
}


bool env_checkvar(env curr_env) {
    vars *var_in_env = curr_env->vars;
    vars *var_to_check = curr_env->vars;
    while (*var_to_check != NULL) {
        while (*var_in_env != NULL) {
            if (var_in_env->name == var_to_check->name) {
                return false;
            }
            *var_in_env = var_in_env->next;
        }
        *var_in_env = curr_env->vars;
        *var_to_check = var_to_check->next;
    }
}

bool env_checknames(env curr_env, list *envs) {
    char *name_curr = curr_env->name;
    while (*envs != NULL) {
        if (envs->name == name_curr) {
            return false;
        }
        *envs = envs->next;
    }
    return false;
}
*/

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

var *getVar(env *env, char *name) {
    for (var *vars = env->vars; vars; vars = vars->next) {
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