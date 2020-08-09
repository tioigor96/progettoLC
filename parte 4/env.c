
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct list_t list;

typedef struct{
	char *value;
	list *list;
} node;


struct list_t{
	list *next;
	node *n;
};

typedef struct {
    char *name;
    list *vars;
} env;

typedef struct  {
    char *name;
    list *next;
    char *value;
} vars;


env *env_create(char *name, list *vars){
    env *temp = malloc(sizeof(env));
    temp->name = name;
    temp->vars = *vars;
    return temp;
}

vars *vars_create(char *name, list *next, char *value){
    vars *temp = malloc(sizeof(vars));
    temp->name = name;
    temp->next = *next;
    temp->value = value;
    return temp;
}

void env_add(list **l, env *e){
    if(*l == NULL){
		*l = malloc(sizeof(list));
		(*l)->next = NULL;
		(*l)->n = e;
	}
	else{
		list *temp = *l;
		while(temp->next != NULL){
			temp = temp->next;
		}
		temp->next = malloc(sizeof(list));
		temp->next->next = NULL;
		temp->next->n = e;
	}
}

void vars_add(env *e, vars *vars){
	if(e->vars == NULL){
        vars temp = malloc(sizeof(list));
        temp->next = NULL;
        temp->name = vars->name;
        temp->value = vars->value;
	}else{
        vars var_list = e->vars;
        vars->next = e->vars;
        e->vars = *vars;
    }
}


bool env_checkvar(env curr_env){
    vars *var_in_env = curr_env -> vars;
    vars *var_to_check = curr_env -> vars;
    while (*var_to_check != NULL){
        while (*var_in_env != NULL){
            if (var_in_env->name==var_to_check->name){
                return false;
            }
            *var_in_env = var_in_env->next;
        }
        *var_in_env = curr_env -> vars;
        *var_to_check = var_to_check->next;
    }
}

bool env_checknames(env curr_env, list *envs){
    char *name_curr = curr_env->name;
    while (*envs != NULL){
        if (envs->name == name_curr){
            return false;
        }
        *envs = envs->next;
    }
    return false;
}
