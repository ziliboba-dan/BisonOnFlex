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
	vector<int> keys = {276, 276, 276, 264, 276, 265, 276, 276, 264, 265, 259, 276, 276, 258, 276, 276, 258, 276, 276, 276, 259, 276, 263, 276, 264, 276, 265, 260, 260, 0};
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
