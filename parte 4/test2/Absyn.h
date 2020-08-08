#ifndef ABSYN_HEADER
#define ABSYN_HEADER

/* C++ Abstract Syntax Interface generated by the BNF Converter.*/
// var temporanee inj
char *tmpVG;

/********************   TypeDef Section    ********************/
typedef int Integer;
typedef char Char;
typedef double Double;
typedef char* String;
typedef char* Ident;
typedef char* VariableLocal;
typedef char* VariableGlobal;
typedef char* C;


/********************   Forward Declarations    ********************/

struct ListCS_;
typedef struct ListCS_ *ListCS;
struct S_;
typedef struct S_ *S;
struct DivIS_;
typedef struct DivIS_ *DivIS;
struct Import_;
typedef struct Import_ *Import;
struct SectionP_;
typedef struct SectionP_ *SectionP;
struct SectionF_;
typedef struct SectionF_ *SectionF;
struct Fields_;
typedef struct Fields_ *Fields;
struct FieldT_;
typedef struct FieldT_ *FieldT;
struct CS_;
typedef struct CS_ *CS;
struct Value_;
typedef struct Value_ *Value;
struct TBool_;
typedef struct TBool_ *TBool;
struct NameFile_;
typedef struct NameFile_ *NameFile;
struct NameField_;
typedef struct NameField_ *NameField;
struct NameSection_;
typedef struct NameSection_ *NameSection;


/********************   Abstract Syntax Classes    ********************/

struct S_
{
  enum { is_Init } kind;
  union
  {
    struct { DivIS divis_; ListCS listcs_; } init_;
  } u;
};

S make_Init(ListCS p0, DivIS p1);

struct DivIS_
{
  enum { is_DivIm, is_DivSe } kind;
  union
  {
    struct { Import import_; ListCS listcs_; } divim_;
    struct { ListCS listcs_; SectionP sectionp_; } divse_;
  } u;
};

DivIS make_DivIm(ListCS p0, Import p1);
DivIS make_DivSe(ListCS p0, SectionP p1);

struct Import_
{
  enum { is_Imp } kind;
  union
  {
    struct { ListCS listcs_1, listcs_2, listcs_3, listcs_4, listcs_5; NameFile namefile_; S s_; } imp_;
  } u;
};

Import make_Imp(ListCS p0, ListCS p1, NameFile p2, ListCS p3, ListCS p4, ListCS p5, S p6);

struct SectionP_
{
  enum { is_SectPart } kind;
  union
  {
    struct { Fields fields_; ListCS listcs_1, listcs_2, listcs_3, listcs_4, listcs_5, listcs_6; NameSection namesection_; } sectpart_;
  } u;
};

SectionP make_SectPart(ListCS p0, ListCS p1, ListCS p2, NameSection p3, ListCS p4, ListCS p5, ListCS p6, Fields p7);

struct SectionF_
{
  enum { is_SectF, is_SectT } kind;
  union
  {
    struct { ListCS listcs_1, listcs_2; SectionP sectionp_; } sectf_;
    struct { ListCS listcs_; } sectt_;
  } u;
};

SectionF make_SectF(ListCS p0, ListCS p1, SectionP p2);
SectionF make_SectT(ListCS p0);

struct Fields_
{
  enum { is_Fld } kind;
  union
  {
    struct { FieldT fieldt_; ListCS listcs_1, listcs_2, listcs_3, listcs_4, listcs_5, listcs_6, listcs_7, listcs_8; NameField namefield_; Value value_; } fld_;
  } u;
};

Fields make_Fld(ListCS p0, ListCS p1, ListCS p2, NameField p3, ListCS p4, ListCS p5, Value p6, ListCS p7, ListCS p8, ListCS p9, FieldT p10);

struct FieldT_
{
  enum { is_FldT, is_FldTS } kind;
  union
  {
    struct { Fields fields_; ListCS listcs_1, listcs_2; } fldt_;
    struct { ListCS listcs_1, listcs_2, listcs_3; SectionF sectionf_; } fldts_;
  } u;
};

FieldT make_FldT(ListCS p0, ListCS p1, Fields p2);
FieldT make_FldTS(ListCS p0, ListCS p1, ListCS p2, SectionF p3);

struct CS_
{
  enum { is_Csa } kind;
  union
  {
    struct { C c_; } csa_;
  } u;
};

CS make_Csa(C p0);

struct ListCS_
{
  CS cs_;
  ListCS listcs_;
};

ListCS make_ListCS(CS p1, ListCS p2);
struct Value_
{
  enum { is_Val, is_ValI, is_ValD, is_ValB, is_ValV, is_ValG } kind;
  union
  {
    struct { String string_; } val_;
    struct { Integer integer_; } vali_;
    struct { Double double_; } vald_;
    struct { TBool tbool_; } valb_;
    struct { VariableLocal variablelocal_; } valv_;
    struct { VariableGlobal variableglobal_; } valg_;
  } u;
};

Value make_Val(String p0);
Value make_ValI(Integer p0);
Value make_ValD(Double p0);
Value make_ValB(TBool p0);
Value make_ValV(VariableLocal p0);
Value make_ValG(VariableGlobal p0);

struct TBool_
{
  enum { is_VTrue, is_VFalse } kind;
  union
  {
  } u;
};

TBool make_VTrue();
TBool make_VFalse();

struct NameFile_
{
  enum { is_NFile } kind;
  union
  {
    struct { Ident ident_; } nfile_;
  } u;
};

NameFile make_NFile(Ident p0);

struct NameField_
{
  enum { is_NField } kind;
  union
  {
    struct { Ident ident_; } nfield_;
  } u;
};

NameField make_NField(Ident p0);

struct NameSection_
{
  enum { is_NSection } kind;
  union
  {
    struct { Ident ident_; } nsection_;
  } u;
};

NameSection make_NSection(Ident p0);



#endif
