SHELL = /bin/sh

GHC = ghc
AC = alex
HC = happy
bnfc = bnfc


all:    bnfc alex happy

clean:
	rm -f AbsAuL.hi
	rm -f AbsAuL.hs
	rm -f AbsAuL.o
	rm -f DocAuL.txt
	rm -f ErrM.hi
	rm -f ErrM.hs
	rm -f ErrM.o
	rm -f LexAuL.hi
	rm -f LexAuL.hs
	rm -f LexAuL.o
	rm -f LexAuL.x
	rm -f ParAuL.hi
	rm -f ParAuL.hs
	rm -f ParAuL.o
#	rm -f ParAuL.y
	rm -f PrintAuL.hi
#	rm -f PrintAuL.hs
	rm -f PrintAuL.o
	rm -f SkelAuL.hi
	rm -f SkelAuL.hs
	rm -f SkelAuL.o
	rm -f TestAuL
	rm -f TestAuL.hs
	rm -f TestAuL.hi
	rm -f TestAuL.o
	rm -f ParAuL.info
	rm -f main.o
	rm -f main.hi
	rm -f main

demo:   clean bnfc alex happy
	$(GHC) main.hs

happy:  bnfc alex
	$(HC) -i ParAuL.y

alex:   bnfc
	python -c "import sys;lines=sys.stdin.read();t1='\"--\" [.]* ; -- Toss single line comments'; t2 = '\"--\" [.]* ; -- Toss single line comments\n\"--[\" (\"=\")* \"[\" ([MANGIAMI # [\]]])* (\"]\") (\"=\")* \"]\" ; -- Toss multi line comments'; print lines.replace(t1,t2)" < LexAuL.x > Lex.x
	mv Lex.x LexAuL.x
	sed -i 's/MANGIAMI/$$u/g' LexAuL.x
	$(AC) LexAuL.x

bnfc:
	$(bnfc) auL.cf
	rm TestAuL.hs
	rm ParAuL.y PrintAuL.hs
	mv ParAuL.y.bak ParAuL.y
	mv PrintAuL.hs.bak PrintAuL.hs
