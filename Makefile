all:
	$(MAKE) parser
	$(MAKE) lexer
	clang++ generate/parser.tab.c generate/lex.yy.c src/main.cpp -o bin/lexer -lfl
parser:
	bison -d grammar/parser.y
	mv parser.tab.* generate

lexer:
	flex grammar/lexer.l
	mv lex.yy.* generate
