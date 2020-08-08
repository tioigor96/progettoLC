#ifndef SKELETON_HEADER
#define SKELETON_HEADER
/* You might want to change the above name. */

#include "Absyn.h"


void visitS(S p);

void visitDivIS(DivIS p);

void visitImport(Import p);

void visitSectionP(SectionP p);

void visitSectionF(SectionF p);

void visitFields(Fields p);

void visitFieldT(FieldT p);

void visitCS(CS p);

void visitListCS(ListCS p);

void visitValue(Value p);

void visitTBool(TBool p);

void visitNameFile(NameFile p);

void visitNameField(NameField p);

void visitNameSection(NameSection p);

void visitVariablelocal(VariableLocal p);

void visitVariableglobal(VariableGlobal p);

void visitC(C p);

void visitIdent(Ident i);

void visitInteger(Integer i);

void visitDouble(Double d);

void visitChar(Char c);

void visitString(String s);

#endif

