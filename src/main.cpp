#include <iostream>
#include <vector>
using namespace std;
extern int yyparse();
extern int yylex(void);
extern int yylineno;

int main()
{
	int result;
	vector<int> check;
	do
	{
		result = yylex();
		check.push_back(result);
//		cout << result << endl;
	}while (result != 0);
	
	for (int i = 0; i < check.size(); i++) {
		cout << check[i] << " ";
	}
	
	return 0;
}	
