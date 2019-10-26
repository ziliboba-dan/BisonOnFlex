%{
#include<math.h>
#include<stdio.h>
#include<stdlib.h>
int yylex(void);
void yyerror(char const *s);
int yyparse();
%}

%define api.value.type {double}
 
%token ASSIGN LBRACE RBRACE COLON COMMA POINT LPAREN RPAREN LBRACKET RBRACKET EQUAL EQR EQL NOTEQUAL MORE LESS
%token END FUNCTION ID INT STRING MULTIPLY DIVIDE PLUS MINUS SEMI VAR FOR IF LITTERAL ERROR

%%
start:
	
%%
void yyerror(char const *x)
{
	printf("Error %s \n", x);
	exit(1);

}
