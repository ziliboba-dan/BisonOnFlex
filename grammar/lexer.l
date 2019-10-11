%option noyywrap
%{
	#include "parser.tab.h"
	int pos = 0;
%}

alpha 			[a-zA-Z]
name				{alpha}([0-9]*{alpha}*)
whitespace 	[ \t\r\f\v]
linefeed 		\n
digit				[0-9]*

%%
{name} 				{ pos += strlen(yytext); printf("ID = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return ID; }
{digit} 			{ pos += strlen(yytext); printf("DIGIT = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return ID; }
":"						{ pos += strlen(yytext); printf("COLON = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return COLON; }
"=="					{ pos += strlen(yytext); printf("EQUAL = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return EQUAL; }
"{"						{ pos += strlen(yytext); printf("LBRACE = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return LBRACE; }
"}"						{ pos += strlen(yytext); printf("RBRACE = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return RBRACE; }

":="	 				{ pos += strlen(yytext); printf("ASSIGN = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return ASSIGN; }	
"="	 					{ pos += strlen(yytext); printf("ASSIGN = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return ASSIGN; }
","	 					{ pos += strlen(yytext); printf("COMMA = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return COMMA; }
"."	 					{ pos += strlen(yytext); printf("POINT = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return POINT; }
"("	 					{ pos += strlen(yytext); printf("LPAREN = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return LPAREN; }
")"	 					{ pos += strlen(yytext); printf("RPAREN = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return RPAREN; }
"["	 					{ pos += strlen(yytext); printf("LBRACKET = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return LBRACKET; }
"]"	 					{ pos += strlen(yytext); printf("RBRACKET = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return RBRACKET; }
">="	 				{ pos += strlen(yytext); printf("EQR = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return EQR; }
"<="	 				{ pos += strlen(yytext); printf("EQL = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return EQL; }
"!="	 				{ pos += strlen(yytext); printf("NOTEQUAL = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return NOTEQUAL; }
"EOF"	 				{ pos += strlen(yytext); printf("END = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return END; }
">"	 					{ pos += strlen(yytext); printf("MORE = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return MORE; }
"<"	 					{ pos += strlen(yytext); printf("LESS = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return LESS; }
"func"	 			{ pos += strlen(yytext); printf("FUNCTION = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return FUNCTION; }
"int"	 				{ pos += strlen(yytext); printf("INT = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return INT; }
"char"	 			{ pos += strlen(yytext); printf("STRING = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return STRING; }
"*"	 					{ pos += strlen(yytext); printf("MULTIPLY = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return MULTIPLY; }
"/"	 					{ pos += strlen(yytext); printf("DIVIDE = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return DIVIDE; }
"+"	 					{ pos += strlen(yytext); printf("PLUS = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return PLUS; }
"-"	 					{ pos += strlen(yytext); printf("MINUS = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return MINUS; }
";"	 					{ pos += strlen(yytext); printf("SEMI = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return SEMI; }
"var"	 				{ pos += strlen(yytext); printf("VAR = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return VAR; }
"for"	 				{ pos += strlen(yytext); printf("FOR = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return FOR; }
"if"	 				{ pos += strlen(yytext); printf("IF = '%s', loc<%d><%lu>\n", yytext, yylineno, pos - strlen(yytext) + 1); return IF; }

{whitespace}	{ pos += 1; }
{linefeed}		{ ++yylineno; pos = 0; }
%%
#include<stdio.h>


