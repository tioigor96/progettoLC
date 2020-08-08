#ifndef PRINTER_HEADER
#define PRINTER_HEADER

#include "Absyn.h"

/* Certain applications may improve performance by changing the buffer size */
#define BUFFER_INITIAL 2000
/* You may wish to change _L_PAREN or _R_PAREN */
#define _L_PAREN '('
#define _R_PAREN ')'

/* The following are simple heuristics for rendering terminals */
/* You may wish to change them */
void renderCC(Char c);
void renderCS(String s);
void indent(void);
void backup(void);


char* printS(S p);
char* printDivIS(DivIS p);
char* printImport(Import p);
char* printSectionP(SectionP p);
char* printSectionF(SectionF p);
char* printFields(Fields p);
char* printFieldT(FieldT p);
char* printCS(CS p);
char* printListCS(ListCS p);
char* printValue(Value p);
char* printTBool(TBool p);
char* printNameFile(NameFile p);
char* printNameField(NameField p);
char* printNameSection(NameSection p);

void ppS(S p, int i);
void ppDivIS(DivIS p, int i);
void ppImport(Import p, int i);
void ppSectionP(SectionP p, int i);
void ppSectionF(SectionF p, int i);
void ppFields(Fields p, int i);
void ppFieldT(FieldT p, int i);
void ppCS(CS p, int i);
void ppListCS(ListCS p, int i);
void ppValue(Value p, int i);
void ppTBool(TBool p, int i);
void ppNameFile(NameFile p, int i);
void ppNameField(NameField p, int i);
void ppNameSection(NameSection p, int i);

char* showS(S p);
char* showDivIS(DivIS p);
char* showImport(Import p);
char* showSectionP(SectionP p);
char* showSectionF(SectionF p);
char* showFields(Fields p);
char* showFieldT(FieldT p);
char* showCS(CS p);
char* showListCS(ListCS p);
char* showValue(Value p);
char* showTBool(TBool p);
char* showNameFile(NameFile p);
char* showNameField(NameField p);
char* showNameSection(NameSection p);

void shS(S p);
void shDivIS(DivIS p);
void shImport(Import p);
void shSectionP(SectionP p);
void shSectionF(SectionF p);
void shFields(Fields p);
void shFieldT(FieldT p);
void shCS(CS p);
void shListCS(ListCS p);
void shValue(Value p);
void shTBool(TBool p);
void shNameFile(NameFile p);
void shNameField(NameField p);
void shNameSection(NameSection p);

void ppVariableLocal(String s, int i);
void ppVariableGlobal(String s, int i);
void ppC(String s, int i);
void shVariableLocal(String s);
void shVariableGlobal(String s);
void shC(String s);
void ppInteger(Integer n, int i);
void ppDouble(Double d, int i);
void ppChar(Char c, int i);
void ppString(String s, int i);
void ppIdent(String s, int i);
void shInteger(Integer n);
void shDouble(Double d);
void shChar(Char c);
void shString(String s);
void shIdent(String s);
void bufAppendS(const char* s);
void bufAppendC(const char c);
void bufReset(void);
void resizeBuffer(void);

#endif

