CC = gcc
CCFLAGS = -g -W -Wall

FLEX = flex
FLEX_OPTS = -Pbnf1

BISON = bison
BISON_OPTS = -t -pbnf1 --debug

OBJS = Absyn.o Lexer.o Parser.o Printer.o env.o

.PHONY: clean distclean

all: Testbnf1

clean:
	rm -f *.o Testbnf1 bnf1.aux bnf1.log bnf1.pdf bnf1.dvi bnf1.ps bnf1 Parser.c Lexer.c

distclean: clean
	rm -f Absyn.h Absyn.c Test.c Parser.c Parser.h Lexer.c Skeleton.c Skeleton.h Printer.c Printer.h Makefile bnf1.l bnf1.y bnf1.tex 

Testbnf1: ${OBJS} Test.o
	@echo "Linking Testbnf1..."
	${CC} ${CCFLAGS} ${OBJS} Test.o -o Testbnf1

Absyn.o: Absyn.c Absyn.h
	${CC} ${CCFLAGS} -c Absyn.c

Lexer.c: bnf1.l
	${FLEX} ${FLEX_OPTS} -oLexer.c bnf1.l

Parser.c: bnf1.y
	${BISON} ${BISON_OPTS} bnf1.y -o Parser.c

Lexer.o: Lexer.c Parser.h
	${CC} ${CCFLAGS} -c Lexer.c 

Parser.o: Parser.c Absyn.h
	${CC} ${CCFLAGS} -c Parser.c

Printer.o: Printer.c Printer.h Absyn.h
	${CC} ${CCFLAGS} -c Printer.c

Test.o: Test.c Parser.h Printer.h Absyn.h
	${CC} ${CCFLAGS} -c Test.c

env.o:  env.c env.h Absyn.h
	${CC} ${CCFLAGS} -c env.c
