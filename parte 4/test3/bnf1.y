/* This Bison file was machine-generated by BNFC */
%{
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "Absyn.h"
#include "env.h"
#define initialize_lexer bnf1_initialize_lexer
extern int yyparse(void);
extern int yylex(void);
int yy_mylinenumber;
extern int initialize_lexer(FILE * inp);
void yyerror(const char *str)
{
  extern char *bnf1text;
  fprintf(stderr,"error: line %d: %s at %s\n",
    yy_mylinenumber + 1, str, bnf1text);
}

S YY_RESULT_S_ = 0;
S pS(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_S_;
  }
}

DivIS YY_RESULT_DivIS_ = 0;
DivIS pDivIS(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_DivIS_;
  }
}

Import YY_RESULT_Import_ = 0;
Import pImport(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_Import_;
  }
}

SectionP YY_RESULT_SectionP_ = 0;
SectionP pSectionP(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_SectionP_;
  }
}

SectionF YY_RESULT_SectionF_ = 0;
SectionF pSectionF(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_SectionF_;
  }
}

Fields YY_RESULT_Fields_ = 0;
Fields pFields(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_Fields_;
  }
}

FieldT YY_RESULT_FieldT_ = 0;
FieldT pFieldT(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_FieldT_;
  }
}

CS YY_RESULT_CS_ = 0;
CS pCS(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_CS_;
  }
}

ListCS YY_RESULT_ListCS_ = 0;
ListCS pListCS(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_ListCS_;
  }
}

Value YY_RESULT_Value_ = 0;
Value pValue(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_Value_;
  }
}

TBool YY_RESULT_TBool_ = 0;
TBool pTBool(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_TBool_;
  }
}

NameFile YY_RESULT_NameFile_ = 0;
NameFile pNameFile(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_NameFile_;
  }
}

NameField YY_RESULT_NameField_ = 0;
NameField pNameField(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_NameField_;
  }
}

NameSection YY_RESULT_NameSection_ = 0;
NameSection pNameSection(FILE *inp)
{
  initialize_lexer(inp);
  if (yyparse())
  { /* Failure */
    return 0;
  }
  else
  { /* Success */
    return YY_RESULT_NameSection_;
  }
}


ListCS reverseListCS(ListCS l)
{
  ListCS prev = 0;
  ListCS tmp = 0;
  while (l)
  {
    tmp = l->listcs_;
    l->listcs_ = prev;
    prev = l;
    l = tmp;
  }
  return prev;
}

%}

%union
{
  int int_;
  char char_;
  double double_;
  char* string_;
  S s_;
  DivIS divis_;
  Import import_;
  SectionP sectionp_;
  SectionF sectionf_;
  Fields fields_;
  FieldT fieldt_;
  CS cs_;
  ListCS listcs_;
  Value value_;
  TBool tbool_;
  NameFile namefile_;
  NameField namefield_;
  NameSection namesection_;

}

%token _ERROR_
%token _SYMB_0    /*   <   */
%token _SYMB_1    /*   >   */
%token _SYMB_2    /*   </   */
%token _SYMB_3    /*   =   */
%token _SYMB_4    /*   false   */
%token _SYMB_5    /*   field   */
%token _SYMB_6    /*   import   */
%token _SYMB_7    /*   name   */
%token _SYMB_8    /*   section   */
%token _SYMB_9    /*   true   */
%token<string_> _SYMB_10    /*   VariableLocal   */
%token<string_> _SYMB_11    /*   VariableGlobal   */
%token<string_> _SYMB_12    /*   C   */
%token<string_> _SYMB_13    /*   VFName   */

%type <s_> S
%type <divis_> DivIS
%type <import_> Import
%type <sectionp_> SectionP
%type <sectionf_> SectionF
%type <fields_> Fields
%type <fieldt_> FieldT
%type <cs_> CS
%type <listcs_> ListCS
%type <value_> Value
%type <tbool_> TBool
%type <namefile_> NameFile
%type <namefield_> NameField
%type <namesection_> NameSection

%token<string_> _STRING_
%token<int_> _INTEGER_
%token<double_> _DOUBLE_
%token<string_> _IDENT_

%start S
%%
S : ListCS _SYMB_0 DivIS { $$ = make_Init(reverseListCS($1), $3); YY_RESULT_S_= $$; } 
;
DivIS : ListCS _SYMB_6 Import { $$ = make_DivIm(reverseListCS($1), $3); YY_RESULT_DivIS_= $$; } 
  | ListCS _SYMB_8 SectionP { $$ = make_DivSe(reverseListCS($1), $3); YY_RESULT_DivIS_= $$; }
;
Import : ListCS _SYMB_1 ListCS NameFile ListCS _SYMB_2 ListCS _SYMB_6 ListCS _SYMB_1 S { $$ = make_Imp(reverseListCS($1), reverseListCS($3), $4, reverseListCS($5), reverseListCS($7), reverseListCS($9), $11); YY_RESULT_Import_= $$; } 
;
SectionP :  ListCS _SYMB_7 ListCS _SYMB_3 ListCS NameSection ListCS _SYMB_1 ListCS _SYMB_0 ListCS _SYMB_5 Fields 
            { 
                NameSection ns=$6;
                // printf("1\n");
                char *nome=strdup(ns->u.nsection_.ident_);
                envs=addEnv(nome,envs);
                // printf("%p\n",vars);                
                envs->vars = vars;
                vars = NULL;
                $$ = make_SectPart(reverseListCS($1), reverseListCS($3), 
                                   reverseListCS($5), ns, reverseListCS($7), 
                                   reverseListCS($9), reverseListCS($11), $13);
                YY_RESULT_SectionP_= $$;
            } 
;
SectionF : ListCS _SYMB_0 ListCS _SYMB_8 SectionP { $$ = make_SectF(reverseListCS($1), reverseListCS($3), $5); YY_RESULT_SectionF_= $$; } 
  | ListCS { $$ = make_SectT(reverseListCS($1)); YY_RESULT_SectionF_= $$; }
;
Fields :    ListCS _SYMB_7 ListCS _SYMB_3 ListCS NameField ListCS _SYMB_1 ListCS Value ListCS _SYMB_2 ListCS _SYMB_5 ListCS _SYMB_1 FieldT 
            { 
                $$ = make_Fld(reverseListCS($1), reverseListCS($3), 
                                reverseListCS($5), $6, reverseListCS($7), 
                                reverseListCS($9), $10, reverseListCS($11), 
                                reverseListCS($13), reverseListCS($15), $17);
                YY_RESULT_Fields_= $$;
                char *fnamefield=strdup(YY_RESULT_Fields_->u.fld_.namefield_->u.nfield_.ident_);
                char *fvalue=strValue(YY_RESULT_Fields_->u.fld_.value_);
                vars = addVar(vars,fnamefield,fvalue);
                
            } 
;
FieldT : ListCS _SYMB_0 ListCS _SYMB_5 Fields { $$ = make_FldT(reverseListCS($1), reverseListCS($3), $5); YY_RESULT_FieldT_= $$; } 
  | ListCS _SYMB_2 ListCS _SYMB_8 ListCS _SYMB_1 SectionF { $$ = make_FldTS(reverseListCS($1), reverseListCS($3), reverseListCS($5), $7); YY_RESULT_FieldT_= $$; }
;
CS : _SYMB_12 { $$ = make_Csa($1); YY_RESULT_CS_= $$; } 
;
ListCS : /* empty */ { $$ = 0; YY_RESULT_ListCS_= $$; } 
  | ListCS CS { $$ = make_ListCS($2, $1); YY_RESULT_ListCS_= $$; }
;
Value : _STRING_ { $$ = make_Val($1); YY_RESULT_Value_= $$; } 
  | _INTEGER_ { $$ = make_ValI($1); YY_RESULT_Value_= $$; }
  | _DOUBLE_ { $$ = make_ValD($1); YY_RESULT_Value_= $$; }
  | TBool { $$ = make_ValB($1); YY_RESULT_Value_= $$; }
  | _SYMB_10 { $$ = make_ValV($1); YY_RESULT_Value_= $$; }
  | _SYMB_11 { $$ = make_ValG($1); YY_RESULT_Value_= $$; }
;
TBool : _SYMB_9 { $$ = make_VTrue(); YY_RESULT_TBool_= $$; } 
  | _SYMB_4 { $$ = make_VFalse(); YY_RESULT_TBool_= $$; }
;
NameFile : _SYMB_13 { $$ = make_NFile($1); YY_RESULT_NameFile_= $$; } 
;
NameField : _IDENT_ { $$ = make_NField($1); YY_RESULT_NameField_= $$; } 
;
NameSection : _IDENT_ { $$ = make_NSection($1); YY_RESULT_NameSection_= $$; } 
;

