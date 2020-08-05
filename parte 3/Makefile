SHELL = /bin/sh

GHC = ghc
AC = alex
HC = happy
BNFC = bnfc

all:    bnfc alex happy

clean:
	find '(' -name BNF.cf -o -name Makefile -o -name Parte3.hs -o -name "ProgettoLC parte3 Gruppo 2 Relazione.pdf" -o -name "ProgettoLC parte3 Gruppo 2 Testo.pdf" -o -name test.txt -o -name Test.hs ')' -prune -o -exec rm -rf {} \;

demo:   bnfc alex happy
	$(GHC) Test.hs

happy:  bnfc alex
	$(HC) ParBNF.y

alex:   bnfc
	$(AC) LexBNF.x

bnfc:
	$(BNFC) BNF.cf
