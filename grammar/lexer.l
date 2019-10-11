%option noyywrap
%{
	#include <iostream>
	#include "parser.tab.h"
	#include <string>
	using namespace std;
	int pos = 0;
	void show_lex(string type, char *yytext, int yylineno, int position)
	{
		std::cout << type << " = " << "'" << yytext << "', loc<" << yylineno << "><" << position  << ">" << std::endl;
	}
%}

LETTER 			[a-zA-Z]
DIGIT				[0-9]
DIGIT_D			([1-9][0-9]*)
DIGIT_OCTAL	([0][xX][0-7]*)
DIGIT_HEX		([0][xX][0-9A-Fa-f]+)
ZERO [0]

VAR_TYPE		"int"|"string"
name				{alpha}([0-9]*{alpha}*)
whitespace 	[ \t\r\f\v]
linefeed 		\n


%%
{LETTER}({LETTER}|{DIGIT})* { pos += strlen(yytext); show_lex("ID", yytext, yylineno, pos - strlen(yytext) + 1); return ID; } 
{DIGIT_D}			{ pos += strlen(yytext); show_lex("DIGIT_D", yytext, yylineno, pos - strlen(yytext) + 1); return DIGIT_D; }
{DIGIT}+"."{DIGIT}+ { pos += strlen(yytext); show_lex("DIGIT_FLOAT", yytext, yylineno, pos - strlen(yytext) + 1); return NUMBER_F; }
{DIGIT_OCTAL}			{ pos += strlen(yytext); show_lex("DIGIT_OCTAL", yytext, yylineno, pos - strlen(yytext) + 1); return DIGIT_OCTAL; }
{DIGIT_HEX}			{ pos += strlen(yytext); show_lex("DIGIT_HEX", yytext, yylineno, pos - strlen(yytext) + 1); return DIGIT_HEX; }


":"						{ pos += strlen(yytext); show_lex("COLON", yytext, yylineno, pos - strlen(yytext) + 1); return COLON; }
"=="					{ pos += strlen(yytext); show_lex("EQUAL", yytext, yylineno, pos - strlen(yytext) + 1); return EQUAL; }
"{"						{ pos += strlen(yytext); show_lex("LBRACE", yytext, yylineno, pos - strlen(yytext) + 1); return LBRACE; }
"}"						{ pos += strlen(yytext); show_lex("RBACE", yytext, yylineno, pos - strlen(yytext) + 1); return RBRACE; }

":="	 				{ pos += strlen(yytext); show_lex("ASSIGN", yytext, yylineno, pos - strlen(yytext) + 1); return ASSIGN; }	
"="	 					{ pos += strlen(yytext); show_lex("ASSIGN", yytext, yylineno, pos - strlen(yytext) + 1); return ASSIGN; }
","	 					{ pos += strlen(yytext); show_lex("COMMA", yytext, yylineno, pos - strlen(yytext) + 1); return COMMA; }
"."	 					{ pos += strlen(yytext); show_lex("POINT", yytext, yylineno, pos - strlen(yytext) + 1); return POINT; }
"("	 					{ pos += strlen(yytext); show_lex("LPAREN", yytext, yylineno, pos - strlen(yytext) + 1); return LPAREN; }
")"	 					{ pos += strlen(yytext); show_lex("RPAREN", yytext, yylineno, pos - strlen(yytext) + 1); return RPAREN; }
"["	 					{ pos += strlen(yytext); show_lex("LBRACKET", yytext, yylineno, pos - strlen(yytext) + 1); return LBRACKET; }
"]"	 					{ pos += strlen(yytext); show_lex("RBRACKET", yytext, yylineno, pos - strlen(yytext) + 1); return RBRACKET; }
">="	 				{ pos += strlen(yytext); show_lex("EQR", yytext, yylineno, pos - strlen(yytext) + 1); return EQR; }
"<="	 				{ pos += strlen(yytext); show_lex("EQL", yytext, yylineno, pos - strlen(yytext) + 1); return EQL; }
"!="	 				{ pos += strlen(yytext); show_lex("NOTEQUAL", yytext, yylineno, pos - strlen(yytext) + 1); return NOTEQUAL; }
"EOF"	 				{ pos += strlen(yytext); show_lex("END", yytext, yylineno, pos - strlen(yytext) + 1); return END; }
">"	 					{ pos += strlen(yytext); show_lex("MORE", yytext, yylineno, pos - strlen(yytext) + 1); return MORE; }
"<"	 					{ pos += strlen(yytext); show_lex("LESS", yytext, yylineno, pos - strlen(yytext) + 1); return LESS; }
"package"			{ pos += strlen(yytext); show_lex("LESS", yytext, yylineno, pos - strlen(yytext) + 1); return PACKAGE; }
"func"	 			{ pos += strlen(yytext); show_lex("FUNCTION", yytext, yylineno, pos - strlen(yytext) + 1); return FUNCTION; }
"int"	 				{ pos += strlen(yytext); show_lex("INT", yytext, yylineno, pos - strlen(yytext) + 1); return INT; }
"string"	 		{ pos += strlen(yytext); show_lex("STRING", yytext, yylineno, pos - strlen(yytext) + 1); return STRING; }
"*"	 					{ pos += strlen(yytext); show_lex("MULTIPLY", yytext, yylineno, pos - strlen(yytext) + 1); return MULTIPLY; }
"/"	 					{ pos += strlen(yytext); show_lex("DIVIDE", yytext, yylineno, pos - strlen(yytext) + 1); return DIVIDE; }
"+"	 					{ pos += strlen(yytext); show_lex("PLUS", yytext, yylineno, pos - strlen(yytext) + 1); return PLUS; }
"-"	 					{ pos += strlen(yytext); show_lex("MINUS", yytext, yylineno, pos - strlen(yytext) + 1); return MINUS; }
";"	 					{ pos += strlen(yytext); show_lex("SEMI", yytext, yylineno, pos - strlen(yytext) + 1); return SEMI; }
"var"	 				{ pos += strlen(yytext); show_lex("VAR", yytext, yylineno, pos - strlen(yytext) + 1); return VAR; }
"for"	 				{ pos += strlen(yytext); show_lex("FOR", yytext, yylineno, pos - strlen(yytext) + 1); return FOR; }
"if"	 				{ pos += strlen(yytext); show_lex("IF", yytext, yylineno, pos - strlen(yytext) + 1); return IF; }

{whitespace}	{ pos += 1; }
{linefeed}		{ ++yylineno; pos = 0; }
{ZERO} 				{ pos += strlen(yytext); show_lex("DIGIT_D", yytext, yylineno, pos - strlen(yytext) + 1); return DIGIT_D; }

{ZERO}+{LETTER}({LETTER}|{DIGIT})* { pos += strlen(yytext); show_lex("ERROR", yytext, yylineno, pos - strlen(yytext) + 1); return ERROR; }
.  						{ pos += strlen(yytext); show_lex("ERROR", yytext, yylineno, pos - strlen(yytext) + 1);return ERROR; }
%%
#include<stdio.h>


