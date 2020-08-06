SHELL = /bin/sh

GHC = ghc
AC = alex
HC = happy
BNFC = bnfc

all:    bnfc alex happy

clean:
	rm -f AbsBNF.hi
	rm -f AbsBNF.hs
	rm -f AbsBNF.o
	rm -f DocBNF.txt
	rm -f ErrM.hi
	rm -f ErrM.hs
	rm -f ErrM.o
	rm -f LexBNF.hi
	rm -f LexBNF.hs
	rm -f LexBNF.o
	rm -f LexBNF.x
	rm -f ParBNF.hi
	rm -f ParBNF.hs
	rm -f ParBNF.o
	rm -f ParBNF.y
	rm -f Parte3.hi
	rm -f Parte3.o
	rm -f PrintBNF.hi
	rm -f PrintBNF.hs
	rm -f PrintBNF.o
	rm -f SkelBNF.hi
	rm -f SkelBNF.hs
	rm -f SkelBNF.o
	rm -f Test
	rm -f TestBNF.hs
	rm -f Test.hi
	rm -f Test.o

demo:   bnfc alex happy
	$(GHC) Test.hs

happy:  bnfc alex
	$(HC) ParBNF.y

alex:   bnfc
	$(AC) LexBNF.x

bnfc:
	$(BNFC) BNF.cf
