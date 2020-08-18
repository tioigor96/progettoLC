cmake_minimum_required(VERSION 3.12)
project(test3 C)

set(CMAKE_C_STANDARD 11)

include_directories(.)

add_executable(test3
        Absyn.c
        Absyn.h
        env.c
        env.h
        Lexer.c
        Parser.c
        Parser.h
        Printer.c
        Printer.h
        Skeleton.c
        Skeleton.h
        Test.c)
