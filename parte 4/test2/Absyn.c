/* C Abstract Syntax Implementation generated by the BNF Converter. */

#include <stdio.h>
#include <stdlib.h>
#include "Absyn.h"


/********************   Init    ********************/
S make_Init(ListCS p1, DivIS p2) {
    S tmp = (S) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating Init!\n");
        exit(1);
    }
    tmp->kind = is_Init;
    tmp->u.init_.listcs_ = p1;
    tmp->u.init_.divis_ = p2;
    return tmp;
}/********************   DivIm    ********************/
DivIS make_DivIm(ListCS p1, Import p2) {
    DivIS tmp = (DivIS) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating DivIm!\n");
        exit(1);
    }
    tmp->kind = is_DivIm;
    tmp->u.divim_.listcs_ = p1;
    tmp->u.divim_.import_ = p2;
    return tmp;
}

/********************   DivSe    ********************/
DivIS make_DivSe(ListCS p1, SectionP p2) {
    DivIS tmp = (DivIS) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating DivSe!\n");
        exit(1);
    }
    tmp->kind = is_DivSe;
    tmp->u.divse_.listcs_ = p1;
    tmp->u.divse_.sectionp_ = p2;
    return tmp;
}/********************   Imp    ********************/
Import make_Imp(ListCS p1, ListCS p2, NameFile p3, ListCS p4, ListCS p5, ListCS p6, S p7) {
    Import tmp = (Import) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating Imp!\n");
        exit(1);
    }
    tmp->kind = is_Imp;
    tmp->u.imp_.listcs_1 = p1;
    tmp->u.imp_.listcs_2 = p2;
    tmp->u.imp_.namefile_ = p3;
    tmp->u.imp_.listcs_3 = p4;
    tmp->u.imp_.listcs_4 = p5;
    tmp->u.imp_.listcs_5 = p6;
    tmp->u.imp_.s_ = p7;
    return tmp;
}/********************   SectPart    ********************/
SectionP make_SectPart(ListCS p1, ListCS p2, ListCS p3, NameSection p4, ListCS p5, ListCS p6, ListCS p7, Fields p8) {
    SectionP tmp = (SectionP) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating SectPart!\n");
        exit(1);
    }
    tmp->kind = is_SectPart;
    tmp->u.sectpart_.listcs_1 = p1;
    tmp->u.sectpart_.listcs_2 = p2;
    tmp->u.sectpart_.listcs_3 = p3;
    tmp->u.sectpart_.namesection_ = p4;
    tmp->u.sectpart_.listcs_4 = p5;
    tmp->u.sectpart_.listcs_5 = p6;
    tmp->u.sectpart_.listcs_6 = p7;
    tmp->u.sectpart_.fields_ = p8;
    return tmp;
}/********************   SectF    ********************/
SectionF make_SectF(ListCS p1, ListCS p2, SectionP p3) {
    SectionF tmp = (SectionF) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating SectF!\n");
        exit(1);
    }
    tmp->kind = is_SectF;
    tmp->u.sectf_.listcs_1 = p1;
    tmp->u.sectf_.listcs_2 = p2;
    tmp->u.sectf_.sectionp_ = p3;
    return tmp;
}

/********************   SectT    ********************/
SectionF make_SectT(ListCS p1) {
    SectionF tmp = (SectionF) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating SectT!\n");
        exit(1);
    }
    tmp->kind = is_SectT;
    tmp->u.sectt_.listcs_ = p1;
    return tmp;
}/********************   Fld    ********************/
Fields make_Fld(ListCS p1, ListCS p2, ListCS p3, NameField p4, ListCS p5, ListCS p6, Value p7, ListCS p8, ListCS p9,
                ListCS p10, FieldT p11) {
    Fields tmp = (Fields) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating Fld!\n");
        exit(1);
    }
    tmp->kind = is_Fld;
    tmp->u.fld_.listcs_1 = p1;
    tmp->u.fld_.listcs_2 = p2;
    tmp->u.fld_.listcs_3 = p3;
    tmp->u.fld_.namefield_ = p4;
    tmp->u.fld_.listcs_4 = p5;
    tmp->u.fld_.listcs_5 = p6;
    tmp->u.fld_.value_ = p7;
    tmp->u.fld_.listcs_6 = p8;
    tmp->u.fld_.listcs_7 = p9;
    tmp->u.fld_.listcs_8 = p10;
    tmp->u.fld_.fieldt_ = p11;
    return tmp;
}/********************   FldT    ********************/
FieldT make_FldT(ListCS p1, ListCS p2, Fields p3) {
    FieldT tmp = (FieldT) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating FldT!\n");
        exit(1);
    }
    tmp->kind = is_FldT;
    tmp->u.fldt_.listcs_1 = p1;
    tmp->u.fldt_.listcs_2 = p2;
    tmp->u.fldt_.fields_ = p3;
    return tmp;
}

/********************   FldTS    ********************/
FieldT make_FldTS(ListCS p1, ListCS p2, ListCS p3, SectionF p4) {
    FieldT tmp = (FieldT) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating FldTS!\n");
        exit(1);
    }
    tmp->kind = is_FldTS;
    tmp->u.fldts_.listcs_1 = p1;
    tmp->u.fldts_.listcs_2 = p2;
    tmp->u.fldts_.listcs_3 = p3;
    tmp->u.fldts_.sectionf_ = p4;
    return tmp;
}/********************   Csa    ********************/
CS make_Csa(C p1) {
    CS tmp = (CS) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating Csa!\n");
        exit(1);
    }
    tmp->kind = is_Csa;
    tmp->u.csa_.c_ = p1;
    return tmp;
}/********************   ListCS    ********************/
ListCS make_ListCS(CS p1, ListCS p2) {
    ListCS tmp = (ListCS) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ListCS!\n");
        exit(1);
    }
    tmp->cs_ = p1;
    tmp->listcs_ = p2;
    return tmp;
}/********************   Val    ********************/
Value make_Val(String p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating Val!\n");
        exit(1);
    }
    tmp->kind = is_Val;
    tmp->u.val_.string_ = p1;
    return tmp;
}

/********************   ValI    ********************/
Value make_ValI(Integer p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ValI!\n");
        exit(1);
    }
    tmp->kind = is_ValI;
    tmp->u.vali_.integer_ = p1;
    return tmp;
}

/********************   ValD    ********************/
Value make_ValD(Double p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ValD!\n");
        exit(1);
    }
    tmp->kind = is_ValD;
    tmp->u.vald_.double_ = p1;
    return tmp;
}

/********************   ValB    ********************/
Value make_ValB(TBool p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ValB!\n");
        exit(1);
    }
    tmp->kind = is_ValB;
    tmp->u.valb_.tbool_ = p1;
    return tmp;
}

/********************   ValV    ********************/
Value make_ValV(VariableLocal p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ValV!\n");
        exit(1);
    }
    tmp->kind = is_ValV;
    tmp->u.valv_.variablelocal_ = p1;
    return tmp;
}

/********************   ValG    ********************/
Value make_ValG(VariableGlobal p1) {
    Value tmp = (Value) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating ValG!\n");
        exit(1);
    }
    tmp->kind = is_ValG;
    tmp->u.valg_.variableglobal_ = p1;
    return tmp;
}/********************   VTrue    ********************/
TBool make_VTrue() {
    TBool tmp = (TBool) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating VTrue!\n");
        exit(1);
    }
    tmp->kind = is_VTrue;
    return tmp;
}

/********************   VFalse    ********************/
TBool make_VFalse() {
    TBool tmp = (TBool) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating VFalse!\n");
        exit(1);
    }
    tmp->kind = is_VFalse;
    return tmp;
}/********************   NFile    ********************/
NameFile make_NFile(Ident p1) {
    NameFile tmp = (NameFile) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating NFile!\n");
        exit(1);
    }
    tmp->kind = is_NFile;
    tmp->u.nfile_.ident_ = p1;
    return tmp;
}/********************   NField    ********************/
NameField make_NField(Ident p1) {
    NameField tmp = (NameField) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating NField!\n");
        exit(1);
    }
    tmp->kind = is_NField;
    tmp->u.nfield_.ident_ = p1;
    return tmp;
}/********************   NSection    ********************/
NameSection make_NSection(Ident p1) {
    NameSection tmp = (NameSection) malloc(sizeof(*tmp));
    if (!tmp) {
        fprintf(stderr, "Error: out of memory when allocating NSection!\n");
        exit(1);
    }
    tmp->kind = is_NSection;
    tmp->u.nsection_.ident_ = p1;
    return tmp;
}
