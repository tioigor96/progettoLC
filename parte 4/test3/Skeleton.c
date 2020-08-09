/*** BNFC-Generated Visitor Traversal Skeleton. ***/
/* This traverses the abstract syntax tree.
   To use, copy Skeleton.h and Skeleton.c to
   new files. */

#include <stdlib.h>
#include <stdio.h>

#include "Skeleton.h"

void visitS(S _p_)
{
  switch(_p_->kind)
  {
  case is_Init:
    /* Code for Init Goes Here */
    visitListCS(_p_->u.init_.listcs_);
    visitDivIS(_p_->u.init_.divis_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing S!\n");
    exit(1);
  }
}

void visitDivIS(DivIS _p_)
{
  switch(_p_->kind)
  {
  case is_DivIm:
    /* Code for DivIm Goes Here */
    visitListCS(_p_->u.divim_.listcs_);
    visitImport(_p_->u.divim_.import_);
    break;  case is_DivSe:
    /* Code for DivSe Goes Here */
    visitListCS(_p_->u.divse_.listcs_);
    visitSectionP(_p_->u.divse_.sectionp_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing DivIS!\n");
    exit(1);
  }
}

void visitImport(Import _p_)
{
  switch(_p_->kind)
  {
  case is_Imp:
    /* Code for Imp Goes Here */
    visitListCS(_p_->u.imp_.listcs_1);
    visitListCS(_p_->u.imp_.listcs_2);
    visitNameFile(_p_->u.imp_.namefile_);
    visitListCS(_p_->u.imp_.listcs_3);
    visitListCS(_p_->u.imp_.listcs_4);
    visitListCS(_p_->u.imp_.listcs_5);
    visitS(_p_->u.imp_.s_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing Import!\n");
    exit(1);
  }
}

void visitSectionP(SectionP _p_)
{
  switch(_p_->kind)
  {
  case is_SectPart:
    /* Code for SectPart Goes Here */
    visitListCS(_p_->u.sectpart_.listcs_1);
    visitListCS(_p_->u.sectpart_.listcs_2);
    visitListCS(_p_->u.sectpart_.listcs_3);
    visitNameSection(_p_->u.sectpart_.namesection_);
    visitListCS(_p_->u.sectpart_.listcs_4);
    visitListCS(_p_->u.sectpart_.listcs_5);
    visitListCS(_p_->u.sectpart_.listcs_6);
    visitFields(_p_->u.sectpart_.fields_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing SectionP!\n");
    exit(1);
  }
}

void visitSectionF(SectionF _p_)
{
  switch(_p_->kind)
  {
  case is_SectF:
    /* Code for SectF Goes Here */
    visitListCS(_p_->u.sectf_.listcs_1);
    visitListCS(_p_->u.sectf_.listcs_2);
    visitSectionP(_p_->u.sectf_.sectionp_);
    break;  case is_SectT:
    /* Code for SectT Goes Here */
    visitListCS(_p_->u.sectt_.listcs_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing SectionF!\n");
    exit(1);
  }
}

void visitFields(Fields _p_)
{
  switch(_p_->kind)
  {
  case is_Fld:
    /* Code for Fld Goes Here */
    visitListCS(_p_->u.fld_.listcs_1);
    visitListCS(_p_->u.fld_.listcs_2);
    visitListCS(_p_->u.fld_.listcs_3);
    visitNameField(_p_->u.fld_.namefield_);
    visitListCS(_p_->u.fld_.listcs_4);
    visitListCS(_p_->u.fld_.listcs_5);
    visitValue(_p_->u.fld_.value_);
    visitListCS(_p_->u.fld_.listcs_6);
    visitListCS(_p_->u.fld_.listcs_7);
    visitListCS(_p_->u.fld_.listcs_8);
    visitFieldT(_p_->u.fld_.fieldt_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing Fields!\n");
    exit(1);
  }
}

void visitFieldT(FieldT _p_)
{
  switch(_p_->kind)
  {
  case is_FldT:
    /* Code for FldT Goes Here */
    visitListCS(_p_->u.fldt_.listcs_1);
    visitListCS(_p_->u.fldt_.listcs_2);
    visitFields(_p_->u.fldt_.fields_);
    break;  case is_FldTS:
    /* Code for FldTS Goes Here */
    visitListCS(_p_->u.fldts_.listcs_1);
    visitListCS(_p_->u.fldts_.listcs_2);
    visitListCS(_p_->u.fldts_.listcs_3);
    visitSectionF(_p_->u.fldts_.sectionf_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing FieldT!\n");
    exit(1);
  }
}

void visitCS(CS _p_)
{
  switch(_p_->kind)
  {
  case is_Csa:
    /* Code for Csa Goes Here */
    visitC(_p_->u.csa_.c_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing CS!\n");
    exit(1);
  }
}

void visitListCS(ListCS listcs)
{
  while(listcs != 0)
  {
    /* Code For ListCS Goes Here */
    visitCS(listcs->cs_);
    listcs = listcs->listcs_;
  }
}

void visitValue(Value _p_)
{
  switch(_p_->kind)
  {
  case is_Val:
    /* Code for Val Goes Here */
    visitString(_p_->u.val_.string_);
    break;  case is_ValI:
    /* Code for ValI Goes Here */
    visitInteger(_p_->u.vali_.integer_);
    break;  case is_ValD:
    /* Code for ValD Goes Here */
    visitDouble(_p_->u.vald_.double_);
    break;  case is_ValB:
    /* Code for ValB Goes Here */
    visitTBool(_p_->u.valb_.tbool_);
    break;  case is_ValV:
    /* Code for ValV Goes Here */
    visitVariableLocal(_p_->u.valv_.variablelocal_);
    break;  case is_ValG:
    /* Code for ValG Goes Here */
    visitVariableGlobal(_p_->u.valg_.variableglobal_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing Value!\n");
    exit(1);
  }
}

void visitTBool(TBool _p_)
{
  switch(_p_->kind)
  {
  case is_VTrue:
    /* Code for VTrue Goes Here */
    break;  case is_VFalse:
    /* Code for VFalse Goes Here */
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing TBool!\n");
    exit(1);
  }
}

void visitNameFile(NameFile _p_)
{
  switch(_p_->kind)
  {
  case is_NFile:
    /* Code for NFile Goes Here */
    visitVFName(_p_->u.nfile_.vfname_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing NameFile!\n");
    exit(1);
  }
}

void visitNameField(NameField _p_)
{
  switch(_p_->kind)
  {
  case is_NField:
    /* Code for NField Goes Here */
    visitIdent(_p_->u.nfield_.ident_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing NameField!\n");
    exit(1);
  }
}

void visitNameSection(NameSection _p_)
{
  switch(_p_->kind)
  {
  case is_NSection:
    /* Code for NSection Goes Here */
    visitIdent(_p_->u.nsection_.ident_);
    break;
  default:
    fprintf(stderr, "Error: bad kind field when printing NameSection!\n");
    exit(1);
  }
}

void visitVariablelocal(VariableLocal p)
{
  /* Code for VariableLocal Goes Here */
}
void visitVariableglobal(VariableGlobal p)
{
  /* Code for VariableGlobal Goes Here */
}
void visitC(C p)
{
  /* Code for C Goes Here */
}
void visitVfname(VFName p)
{
  /* Code for VFName Goes Here */
}
void visitIdent(Ident i)
{
  /* Code for Ident Goes Here */
}
void visitInteger(Integer i)
{
  /* Code for Integer Goes Here */
}
void visitDouble(Double d)
{
  /* Code for Double Goes Here */
}
void visitChar(Char c)
{
  /* Code for Char Goes Here */
}
void visitString(String s)
{
  /* Code for String Goes Here */
}

