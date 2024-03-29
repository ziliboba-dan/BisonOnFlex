/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    ASSIGN = 258,
    LBRACE = 259,
    RBRACE = 260,
    COLON = 261,
    COMMA = 262,
    POINT = 263,
    LPAREN = 264,
    RPAREN = 265,
    LBRACKET = 266,
    RBRACKET = 267,
    EQUAL = 268,
    EQR = 269,
    EQL = 270,
    NOTEQUAL = 271,
    MORE = 272,
    LESS = 273,
    NUMBER_F = 274,
    DIGIT_D = 275,
    END = 276,
    FUNCTION = 277,
    ID = 278,
    INT = 279,
    STRING = 280,
    MULTIPLY = 281,
    DIVIDE = 282,
    PLUS = 283,
    MINUS = 284,
    SEMI = 285,
    VAR = 286,
    FOR = 287,
    IF = 288,
    LITTERAL = 289,
    ERROR = 290,
    VAR_TYPE = 291,
    PACKAGE = 292,
    NUMBER = 293,
    DIGIT_OCTAL = 294,
    DIGIT_HEX = 295
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef double YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
