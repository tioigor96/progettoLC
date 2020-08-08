#ifndef PARSER_HEADER_FILE
#define PARSER_HEADER_FILE

#include "Absyn.h"

typedef union
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
} YYSTYPE;

#define _ERROR_ 258
#define _SYMB_0 259
#define _SYMB_1 260
#define _SYMB_2 261
#define _SYMB_3 262
#define _SYMB_4 263
#define _SYMB_5 264
#define _SYMB_6 265
#define _SYMB_7 266
#define _SYMB_8 267
#define _SYMB_9 268
#define _SYMB_10 269
#define _SYMB_11 270
#define _SYMB_12 271
#define _STRING_ 272
#define _INTEGER_ 273
#define _DOUBLE_ 274
#define _IDENT_ 275

extern YYSTYPE yylval;
S pS(FILE *inp);
DivIS pDivIS(FILE *inp);
Import pImport(FILE *inp);
SectionP pSectionP(FILE *inp);
SectionF pSectionF(FILE *inp);
Fields pFields(FILE *inp);
FieldT pFieldT(FILE *inp);
CS pCS(FILE *inp);
ListCS pListCS(FILE *inp);
Value pValue(FILE *inp);
TBool pTBool(FILE *inp);
NameFile pNameFile(FILE *inp);
NameField pNameField(FILE *inp);
NameSection pNameSection(FILE *inp);


#endif
