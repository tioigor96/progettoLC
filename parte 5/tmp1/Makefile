SHELL = /bin/sh

GHC = ghc
AC = alex
HC = happy
BNFC = bnfc


all:    bnfc alex happy

clean:
	rm -f AbsBnfc.hi
	rm -f AbsBnfc.hs
	rm -f AbsBnfc.o
	rm -f DocBnfc.txt
	rm -f ErrM.hi
	rm -f ErrM.hs
	rm -f ErrM.o
	rm -f LexBnfc.hi
	rm -f LexBnfc.hs
	rm -f LexBnfc.o
	rm -f LexBnfc.x
	rm -f ParBnfc.hi
	rm -f ParBnfc.hs
	rm -f ParBnfc.o
	rm -f ParBnfc.y
	rm -f PrintBnfc.hi
	rm -f PrintBnfc.hs
	rm -f PrintBnfc.o
	rm -f SkelBnfc.hi
	rm -f SkelBnfc.hs
	rm -f SkelBnfc.o
	rm -f TestBnfc
	rm -f TestBnfc.hs
	rm -f TestBnfc.hi
	rm -f TestBnfc.o
	rm -f ParBnfc.info

#demo:   bnfc alex happy
#	$(GHC) Test.hs

happy:  bnfc alex
	$(HC) -i ParBnfc.y

alex:   bnfc
	python -c "import sys;lines=sys.stdin.read();t1='\"--\" [.]* ; -- Toss single line comments'; t2 = '\"--\" [.]* ; -- Toss single line comments\n\"--[\" (\"=\")* \"[\" ([MANGIAMI # [\]]])* (\"]\") (\"=\")* \"]\" ; -- Toss multi line comments'; print lines.replace(t1,t2)" < LexBnfc.x > Lex.x
	mv Lex.x LexBnfc.x
	sed -i 's/MANGIAMI/$$u/g' LexBnfc.x
	$(AC) LexBnfc.x

bnfc:
	$(BNFC) bnfc.cf
