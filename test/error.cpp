#include <iostream>
#include <vector>
#include "../generate/parser.tab.h"
using namespace std;
extern int yyparse();
extern int yylex(void);
extern int yylineno;

int main()
{
	int result;
	vector<int> check;
	vector<int> keys = {ERROR, ERROR, ERROR, 0};
	do
	{
		result = yylex();
		check.push_back(result);
//		cout << result << endl;
	}while (result != 0);
	
	//for (int i = 0; i < check.size(); i++) {
	//	cout << check[i] << " ";
	//}
	
	if (check == keys) {
		cout << "\033[0;32m Test[OK] \033[0m\n";
	}
	else {
		cout << "\033[1;31m Test[FALSE] \033[0m\n";
	}

	return 0;
}	
