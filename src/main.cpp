#include <iostream>
using namespace std;
extern int yyparse();
extern int yylex(void);
extern int yylineno;

int main()
{
	
	while (1)
	{
		int result = yylex();
		
	}
	
	return 0;
}	
