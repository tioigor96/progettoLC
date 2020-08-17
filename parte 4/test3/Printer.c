/*** BNFC-Generated Pretty Printer and Abstract Syntax Viewer ***/

#include "Printer.h"
#include "env.h"
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#define INDENT_WIDTH 2

int _n_;
char *buf_;
int cur_;
int buf_size;

/* You may wish to change the renderC functions */
void renderC(Char c) {
    if (c == '{') {
        bufAppendC('\n');
        indent();
        bufAppendC(c);
        _n_ = _n_ + INDENT_WIDTH;
        bufAppendC('\n');
        indent();
    } else if (c == '(' || c == '[')
        bufAppendC(c);
    else if (c == ')' || c == ']') {
        backup();
        bufAppendC(c);
    } else if (c == '}') {
        int t;
        _n_ = _n_ - INDENT_WIDTH;
        for (t = 0; t < INDENT_WIDTH; t++) {
            backup();
        }
        bufAppendC(c);
        bufAppendC('\n');
        indent();
    } else if (c == ',') {
        backup();
        bufAppendC(c);
        bufAppendC(' ');
    } else if (c == ';') {
        backup();
        bufAppendC(c);
        bufAppendC('\n');
        indent();
    } else if (c == 0) return;
    else {
        bufAppendC(' ');
        bufAppendC(c);
        bufAppendC(' ');
    }
}

void renderS(String s) {
    if (strlen(s) > 0) {
        bufAppendS(s);
        bufAppendC(' ');
    }
}

void indent(void) {
    int n = _n_;
    while (n > 0) {
        bufAppendC(' ');
        n--;
    }
}

void backup(void) {
    if (buf_[cur_ - 1] == ' ') {
        buf_[cur_ - 1] = 0;
        cur_--;
    }
}

char *printS(S p) {
    _n_ = 0;
    bufReset();
    ppS(p, 0);
    return buf_;
}

char *printDivIS(DivIS p) {
    _n_ = 0;
    bufReset();
    ppDivIS(p, 0);
    return buf_;
}

char *printImport(Import p) {
    _n_ = 0;
    bufReset();
    ppImport(p, 0);
    return buf_;
}

char *printSectionP(SectionP p) {
    _n_ = 0;
    bufReset();
    ppSectionP(p, 0);
    return buf_;
}

char *printSectionF(SectionF p) {
    _n_ = 0;
    bufReset();
    ppSectionF(p, 0);
    return buf_;
}

char *printFields(Fields p) {
    _n_ = 0;
    bufReset();
    ppFields(p, 0);
    return buf_;
}

char *printFieldT(FieldT p) {
    _n_ = 0;
    bufReset();
    ppFieldT(p, 0);
    return buf_;
}

char *printCS(CS p) {
    _n_ = 0;
    bufReset();
    ppCS(p, 0);
    return buf_;
}

char *printListCS(ListCS p) {
    _n_ = 0;
    bufReset();
    ppListCS(p, 0);
    return buf_;
}

char *printValue(Value p) {
    _n_ = 0;
    bufReset();
    ppValue(p, 0);
    return buf_;
}

char *printTBool(TBool p) {
    _n_ = 0;
    bufReset();
    ppTBool(p, 0);
    return buf_;
}

char *printNameFile(NameFile p) {
    _n_ = 0;
    bufReset();
    ppNameFile(p, 0);
    return buf_;
}

char *printNameField(NameField p) {
    _n_ = 0;
    bufReset();
    ppNameField(p, 0);
    return buf_;
}

char *printNameSection(NameSection p) {
    _n_ = 0;
    bufReset();
    ppNameSection(p, 0);
    return buf_;
}

char *showS(S p) {
    _n_ = 0;
    bufReset();
    shS(p);
    return buf_;
}

char *showDivIS(DivIS p) {
    _n_ = 0;
    bufReset();
    shDivIS(p);
    return buf_;
}

char *showImport(Import p) {
    _n_ = 0;
    bufReset();
    shImport(p);
    return buf_;
}

char *showSectionP(SectionP p) {
    _n_ = 0;
    bufReset();
    shSectionP(p);
    return buf_;
}

char *showSectionF(SectionF p) {
    _n_ = 0;
    bufReset();
    shSectionF(p);
    return buf_;
}

char *showFields(Fields p) {
    _n_ = 0;
    bufReset();
    shFields(p);
    return buf_;
}

char *showFieldT(FieldT p) {
    _n_ = 0;
    bufReset();
    shFieldT(p);
    return buf_;
}

char *showCS(CS p) {
    _n_ = 0;
    bufReset();
    shCS(p);
    return buf_;
}

char *showListCS(ListCS p) {
    _n_ = 0;
    bufReset();
    shListCS(p);
    return buf_;
}

char *showValue(Value p) {
    _n_ = 0;
    bufReset();
    shValue(p);
    return buf_;
}

char *showTBool(TBool p) {
    _n_ = 0;
    bufReset();
    shTBool(p);
    return buf_;
}

char *showNameFile(NameFile p) {
    _n_ = 0;
    bufReset();
    shNameFile(p);
    return buf_;
}

char *showNameField(NameField p) {
    _n_ = 0;
    bufReset();
    shNameField(p);
    return buf_;
}

char *showNameSection(NameSection p) {
    _n_ = 0;
    bufReset();
    shNameSection(p);
    return buf_;
}

void ppS(S _p_, int _i_) {
    switch (_p_->kind) {
        case is_Init:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.init_.listcs_, 0);
            //renderC('<');
            ppDivIS(_p_->u.init_.divis_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing S!\n");
            exit(1);
    }
}

void ppDivIS(DivIS _p_, int _i_) {
    switch (_p_->kind) {
        case is_DivIm:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.divim_.listcs_, 0);
            //renderS("import");
            ppImport(_p_->u.divim_.import_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_DivSe:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.divse_.listcs_, 0);
            //renderS("section");
            ppSectionP(_p_->u.divse_.sectionp_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing DivIS!\n");
            exit(1);
    }
}

void ppImport(Import _p_, int _i_) {
    switch (_p_->kind) {
        case is_Imp:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.imp_.listcs_1, 0);
            ppListCS(_p_->u.imp_.listcs_2, 0);
            ppListCS(_p_->u.imp_.listcs_3, 0);
            ppListCS(_p_->u.imp_.listcs_4, 0);
            ppListCS(_p_->u.imp_.listcs_5, 0);
            renderS("< import >\n\t");
            ppNameFile(_p_->u.imp_.namefile_, 0);
            renderS("\n </ import >\n");
//    renderS("");
//    renderC('>');
            ppS(_p_->u.imp_.s_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing Import!\n");
            exit(1);
    }
}

void ppSectionP(SectionP _p_, int _i_) {
    switch (_p_->kind) {
        case is_SectPart:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.sectpart_.listcs_1, 0);
            ppListCS(_p_->u.sectpart_.listcs_2, 0);
            ppListCS(_p_->u.sectpart_.listcs_3, 0);
            ppListCS(_p_->u.sectpart_.listcs_4, 0);
            renderS("< section name");
            renderC('=');
            ppNameSection(_p_->u.sectpart_.namesection_, 0);
            renderS(">\n");

            ppListCS(_p_->u.sectpart_.listcs_5, 0);
            ppListCS(_p_->u.sectpart_.listcs_6, 0);
//    renderC('<');
//    renderS("field");
            ppFields(_p_->u.sectpart_.fields_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing SectionP!\n");
            exit(1);
    }
}

void ppSectionF(SectionF _p_, int _i_) {
    switch (_p_->kind) {
        case is_SectF:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.sectf_.listcs_1, 0);
            //renderC('<');
            ppListCS(_p_->u.sectf_.listcs_2, 0);
            //renderS("section");
            ppSectionP(_p_->u.sectf_.sectionp_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_SectT:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.sectt_.listcs_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing SectionF!\n");
            exit(1);
    }
}

void ppFields(Fields _p_, int _i_) {
    switch (_p_->kind) {
        case is_Fld:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.fld_.listcs_1, 0);
            ppListCS(_p_->u.fld_.listcs_2, 0);
            ppListCS(_p_->u.fld_.listcs_3, 0);
            ppListCS(_p_->u.fld_.listcs_4, 0);
            renderS("\t< field name");
            renderC('=');
            ppNameField(_p_->u.fld_.namefield_, 0);
            renderC('>');
            ppListCS(_p_->u.fld_.listcs_5, 0);
            renderS("\n\t\t");
            ppValue(_p_->u.fld_.value_, 0);
            renderC('\n');
            ppListCS(_p_->u.fld_.listcs_6, 0);
            ppListCS(_p_->u.fld_.listcs_7, 0);
            ppListCS(_p_->u.fld_.listcs_8, 0);
            renderS("\t</");
            renderS("field");
            renderC('>');
            renderC('\n');
            ppFieldT(_p_->u.fld_.fieldt_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing Fields!\n");
            exit(1);
    }
}

void ppFieldT(FieldT _p_, int _i_) {
    switch (_p_->kind) {
        case is_FldT:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.fldt_.listcs_1, 0);
            //renderC('<');
            ppListCS(_p_->u.fldt_.listcs_2, 0);
            //renderS("<field");
            ppFields(_p_->u.fldt_.fields_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_FldTS:
            if (_i_ > 0) renderC(_L_PAREN);
            ppListCS(_p_->u.fldts_.listcs_1, 0);
            ppListCS(_p_->u.fldts_.listcs_2, 0);
            ppListCS(_p_->u.fldts_.listcs_3, 0);
            //renderS("</");
            renderS("</ section >\n");
            //renderC('>');
            ppSectionF(_p_->u.fldts_.sectionf_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing FieldT!\n");
            exit(1);
    }
}

void ppCS(CS _p_, int _i_) {
    switch (_p_->kind) {
        case is_Csa:
            if (_i_ > 0) renderC(_L_PAREN);
            ppIdent(_p_->u.csa_.c_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing CS!\n");
            exit(1);
    }
}

void ppListCS(ListCS listcs, int i) {
    while (listcs != 0) {
        if (listcs->listcs_ == 0) {
            ppCS(listcs->cs_, i);
            renderS("");
            listcs = 0;
        } else {
            ppCS(listcs->cs_, i);
            renderS("");
            listcs = listcs->listcs_;
        }
    }
}

void ppValue(Value _p_, int _i_) {
    switch (_p_->kind) {
        case is_Val:
            if (_i_ > 0) renderC(_L_PAREN);
            ppString(_p_->u.val_.string_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_ValI:
            if (_i_ > 0) renderC(_L_PAREN);
            ppInteger(_p_->u.vali_.integer_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_ValD:
            if (_i_ > 0) renderC(_L_PAREN);
            ppDouble(_p_->u.vald_.double_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_ValB:
            if (_i_ > 0) renderC(_L_PAREN);
            ppTBool(_p_->u.valb_.tbool_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_ValV:
            if (_i_ > 0) renderC(_L_PAREN);
            //sostituisco il valore dell'ast con quello di env
            {
                int len = strlen(_p_->u.valv_.variablelocal_) - 1;
                char *varname = calloc(len, sizeof(char));
                memcpy(varname, _p_->u.valv_.variablelocal_ + 1, len);

                env *e = NULL;
                var *v = NULL;
                for (e = envs; e; e = e->next) {
                    if ((v = getVar(e->vars, varname))) {
                        break;
                    }
                }

                ppIdent(v->value, 0);
            }

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_ValG:
            if (_i_ > 0) renderC(_L_PAREN);
            //ppIdent(_p_->u.valg_.variableglobal_, 0);
            {
                char *fvalue = _p_->u.valg_.variableglobal_;
                char *varname = strchr(fvalue, '.');

                int len = strlen(fvalue) - strlen(varname);
                char *envname = calloc(len, sizeof(char));
                memcpy(envname, fvalue + 1, len - 1);
                envname[len] = 0;
                varname++;

                env *env1 = getEnv(envs, envname);
                var *var1 = getVar(env1->vars, varname);

                ppIdent(var1->value,0);
            }

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing Value!\n");
            exit(1);
    }
}

void ppTBool(TBool _p_, int _i_) {
    switch (_p_->kind) {
        case is_VTrue:
            if (_i_ > 0) renderC(_L_PAREN);
            renderS("true");

            if (_i_ > 0) renderC(_R_PAREN);
            break;

        case is_VFalse:
            if (_i_ > 0) renderC(_L_PAREN);
            renderS("false");

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing TBool!\n");
            exit(1);
    }
}

void ppNameFile(NameFile _p_, int _i_) {
    switch (_p_->kind) {
        case is_NFile:
            if (_i_ > 0) renderC(_L_PAREN);
            ppIdent(_p_->u.nfile_.vfname_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing NameFile!\n");
            exit(1);
    }
}

void ppNameField(NameField _p_, int _i_) {
    switch (_p_->kind) {
        case is_NField:
            if (_i_ > 0) renderC(_L_PAREN);
            ppIdent(_p_->u.nfield_.ident_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing NameField!\n");
            exit(1);
    }
}

void ppNameSection(NameSection _p_, int _i_) {
    switch (_p_->kind) {
        case is_NSection:
            if (_i_ > 0) renderC(_L_PAREN);
            ppIdent(_p_->u.nsection_.ident_, 0);

            if (_i_ > 0) renderC(_R_PAREN);
            break;


        default:
            fprintf(stderr, "Error: bad kind field when printing NameSection!\n");
            exit(1);
    }
}

void ppInteger(Integer n, int i) {
    char tmp[16];
    sprintf(tmp, "%d", n);
    bufAppendS(tmp);
}

void ppDouble(Double d, int i) {
    char tmp[16];
    sprintf(tmp, "%g", d);
    bufAppendS(tmp);
}

void ppChar(Char c, int i) {
    bufAppendC('\'');
    bufAppendC(c);
    bufAppendC('\'');
}

void ppString(String s, int i) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}

void ppIdent(String s, int i) {
    renderS(s);
}

void ppVariableLocal(String s, int i) {
    renderS(s);
}


void ppVariableGlobal(String s, int i) {
    renderS(s);
}


void ppC(String s, int i) {
    renderS(s);
}


void ppVFName(String s, int i) {
    renderS(s);
}


void shS(S _p_) {
    switch (_p_->kind) {
        case is_Init:
            bufAppendC('(');

            bufAppendS("Init");

            bufAppendC(' ');

            bufAppendC('[');
            shListCS(_p_->u.init_.listcs_);
            bufAppendC(']');
            bufAppendC(' ');
            bufAppendC('[');
            shDivIS(_p_->u.init_.divis_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing S!\n");
            exit(1);
    }
}

void shDivIS(DivIS _p_) {
    switch (_p_->kind) {
        case is_DivIm:
            bufAppendC('(');

            bufAppendS("DivIm");

            bufAppendC(' ');

            bufAppendC('[');
            shListCS(_p_->u.divim_.listcs_);
            bufAppendC(']');
            bufAppendC(' ');
            bufAppendC('[');
            shImport(_p_->u.divim_.import_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_DivSe:
            bufAppendC('(');

            bufAppendS("DivSe");

            bufAppendC(' ');

            bufAppendC('[');
            shListCS(_p_->u.divse_.listcs_);
            bufAppendC(']');
            bufAppendC(' ');
            bufAppendC('[');
            shSectionP(_p_->u.divse_.sectionp_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing DivIS!\n");
            exit(1);
    }
}

void shImport(Import _p_) {
    switch (_p_->kind) {
        case is_Imp:
            bufAppendC('(');

            bufAppendS("Imp");

            bufAppendC(' ');

            shListCS(_p_->u.imp_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.imp_.listcs_2);
            bufAppendC(' ');
            bufAppendC('[');
            shNameFile(_p_->u.imp_.namefile_);
            bufAppendC(']');
            bufAppendC(' ');
            shListCS(_p_->u.imp_.listcs_3);
            bufAppendC(' ');
            shListCS(_p_->u.imp_.listcs_4);
            bufAppendC(' ');
            shListCS(_p_->u.imp_.listcs_5);
            bufAppendC(' ');
            bufAppendC('[');
            shS(_p_->u.imp_.s_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing Import!\n");
            exit(1);
    }
}

void shSectionP(SectionP _p_) {
    switch (_p_->kind) {
        case is_SectPart:
            bufAppendC('(');

            bufAppendS("SectPart");

            bufAppendC(' ');

            shListCS(_p_->u.sectpart_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.sectpart_.listcs_2);
            bufAppendC(' ');
            shListCS(_p_->u.sectpart_.listcs_3);
            bufAppendC(' ');
            bufAppendC('[');
            shNameSection(_p_->u.sectpart_.namesection_);
            bufAppendC(']');
            bufAppendC(' ');
            shListCS(_p_->u.sectpart_.listcs_4);
            bufAppendC(' ');
            shListCS(_p_->u.sectpart_.listcs_5);
            bufAppendC(' ');
            shListCS(_p_->u.sectpart_.listcs_6);
            bufAppendC(' ');
            bufAppendC('[');
            shFields(_p_->u.sectpart_.fields_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing SectionP!\n");
            exit(1);
    }
}

void shSectionF(SectionF _p_) {
    switch (_p_->kind) {
        case is_SectF:
            bufAppendC('(');

            bufAppendS("SectF");

            bufAppendC(' ');

            shListCS(_p_->u.sectf_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.sectf_.listcs_2);
            bufAppendC(' ');
            bufAppendC('[');
            shSectionP(_p_->u.sectf_.sectionp_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_SectT:
            bufAppendC('(');

            bufAppendS("SectT");

            bufAppendC(' ');

            bufAppendC('[');
            shListCS(_p_->u.sectt_.listcs_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing SectionF!\n");
            exit(1);
    }
}

void shFields(Fields _p_) {
    switch (_p_->kind) {
        case is_Fld:
            bufAppendC('(');

            bufAppendS("Fld");

            bufAppendC(' ');

            shListCS(_p_->u.fld_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_2);
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_3);
            bufAppendC(' ');
            bufAppendC('[');
            shNameField(_p_->u.fld_.namefield_);
            bufAppendC(']');
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_4);
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_5);
            bufAppendC(' ');
            bufAppendC('[');
            shValue(_p_->u.fld_.value_);
            bufAppendC(']');
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_6);
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_7);
            bufAppendC(' ');
            shListCS(_p_->u.fld_.listcs_8);
            bufAppendC(' ');
            bufAppendC('[');
            shFieldT(_p_->u.fld_.fieldt_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing Fields!\n");
            exit(1);
    }
}

void shFieldT(FieldT _p_) {
    switch (_p_->kind) {
        case is_FldT:
            bufAppendC('(');

            bufAppendS("FldT");

            bufAppendC(' ');

            shListCS(_p_->u.fldt_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.fldt_.listcs_2);
            bufAppendC(' ');
            bufAppendC('[');
            shFields(_p_->u.fldt_.fields_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_FldTS:
            bufAppendC('(');

            bufAppendS("FldTS");

            bufAppendC(' ');

            shListCS(_p_->u.fldts_.listcs_1);
            bufAppendC(' ');
            shListCS(_p_->u.fldts_.listcs_2);
            bufAppendC(' ');
            shListCS(_p_->u.fldts_.listcs_3);
            bufAppendC(' ');
            bufAppendC('[');
            shSectionF(_p_->u.fldts_.sectionf_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing FieldT!\n");
            exit(1);
    }
}

void shCS(CS _p_) {
    switch (_p_->kind) {
        case is_Csa:
            bufAppendC('(');

            bufAppendS("Csa");

            bufAppendC(' ');

            shIdent(_p_->u.csa_.c_);

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing CS!\n");
            exit(1);
    }
}

void shListCS(ListCS listcs) {
    while (listcs != 0) {
        if (listcs->listcs_) {
            shCS(listcs->cs_);
            bufAppendS(", ");
            listcs = listcs->listcs_;
        } else {
            shCS(listcs->cs_);
            listcs = 0;
        }
    }
}

void shValue(Value _p_) {
    switch (_p_->kind) {
        case is_Val:
            bufAppendC('(');

            bufAppendS("Val");

            bufAppendC(' ');

            bufAppendC('[');
            shString(_p_->u.val_.string_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_ValI:
            bufAppendC('(');

            bufAppendS("ValI");

            bufAppendC(' ');

            bufAppendC('[');
            shInteger(_p_->u.vali_.integer_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_ValD:
            bufAppendC('(');

            bufAppendS("ValD");

            bufAppendC(' ');

            bufAppendC('[');
            shDouble(_p_->u.vald_.double_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_ValB:
            bufAppendC('(');

            bufAppendS("ValB");

            bufAppendC(' ');

            bufAppendC('[');
            shTBool(_p_->u.valb_.tbool_);
            bufAppendC(']');

            bufAppendC(')');

            break;

        case is_ValV:
            bufAppendC('(');

            bufAppendS("ValV");

            bufAppendC(' ');

            shIdent(_p_->u.valv_.variablelocal_);

            bufAppendC(')');

            break;

        case is_ValG:
            bufAppendC('(');

            bufAppendS("ValG");

            bufAppendC(' ');

            shIdent(_p_->u.valg_.variableglobal_);

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing Value!\n");
            exit(1);
    }
}

void shTBool(TBool _p_) {
    switch (_p_->kind) {
        case is_VTrue:

            bufAppendS("VTrue");


            break;

        case is_VFalse:

            bufAppendS("VFalse");


            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing TBool!\n");
            exit(1);
    }
}

void shNameFile(NameFile _p_) {
    switch (_p_->kind) {
        case is_NFile:
            bufAppendC('(');

            bufAppendS("NFile");

            bufAppendC(' ');

            shIdent(_p_->u.nfile_.vfname_);

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing NameFile!\n");
            exit(1);
    }
}

void shNameField(NameField _p_) {
    switch (_p_->kind) {
        case is_NField:
            bufAppendC('(');

            bufAppendS("NField");

            bufAppendC(' ');

            bufAppendC('[');
            shIdent(_p_->u.nfield_.ident_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing NameField!\n");
            exit(1);
    }
}

void shNameSection(NameSection _p_) {
    switch (_p_->kind) {
        case is_NSection:
            bufAppendC('(');

            bufAppendS("NSection");

            bufAppendC(' ');

            bufAppendC('[');
            shIdent(_p_->u.nsection_.ident_);
            bufAppendC(']');

            bufAppendC(')');

            break;


        default:
            fprintf(stderr, "Error: bad kind field when showing NameSection!\n");
            exit(1);
    }
}

void shInteger(Integer i) {
    char tmp[16];
    sprintf(tmp, "%d", i);
    bufAppendS(tmp);
}

void shDouble(Double d) {
    char tmp[16];
    sprintf(tmp, "%g", d);
    bufAppendS(tmp);
}

void shChar(Char c) {
    bufAppendC('\'');
    bufAppendC(c);
    bufAppendC('\'');
}

void shString(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}

void shIdent(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}

void shVariableLocal(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}


void shVariableGlobal(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}


void shC(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}


void shVFName(String s) {
    bufAppendC('\"');
    bufAppendS(s);
    bufAppendC('\"');
}


void bufAppendS(const char *s) {
    int len = strlen(s);
    int n;
    while (cur_ + len > buf_size) {
        buf_size *= 2; /* Double the buffer size */
        resizeBuffer();
    }
    for (n = 0; n < len; n++) {
        buf_[cur_ + n] = s[n];
    }
    cur_ += len;
    buf_[cur_] = 0;
}

void bufAppendC(const char c) {
    if (cur_ == buf_size) {
        buf_size *= 2; /* Double the buffer size */
        resizeBuffer();
    }
    buf_[cur_] = c;
    cur_++;
    buf_[cur_] = 0;
}

void bufReset(void) {
    cur_ = 0;
    buf_size = BUFFER_INITIAL;
    resizeBuffer();
    memset(buf_, 0, buf_size);
}

void resizeBuffer(void) {
    char *temp = (char *) malloc(buf_size);
    if (!temp) {
        fprintf(stderr, "Error: Out of memory while attempting to grow buffer!\n");
        exit(1);
    }
    if (buf_) {
        strncpy(temp, buf_, buf_size); /* peteg: strlcpy is safer, but not POSIX/ISO C. */
        free(buf_);
    }
    buf_ = temp;
}

char *buf_;
int cur_, buf_size;

