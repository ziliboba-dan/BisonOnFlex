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

.PHONY: test
test:
	clang++  -std=c++11 generate/parser.tab.c generate/lex.yy.c test/test_if.cpp -o bin/test_if -lfl
	clang++  -std=c++11 generate/parser.tab.c generate/lex.yy.c test/test_compute.cpp -o bin/test_compute -lfl
	clang++  -std=c++11 generate/parser.tab.c generate/lex.yy.c test/test_loop.cpp -o bin/test_loop -lfl
#clang++  -std=c++11 generate/parser.tab.c generate/lex.yy.c test/test.cpp -o bin/test_if -lfl
	./bin/test_if < test/test_if.go
	./bin/test_compute < test/test_compute.go
	./bin/test_loop < test/test_loop.go
	rm bin/test*

.PHONY: tidy
tidy:
	clang-tidy **/*.cpp -checks=-*,clang-analyzer-*,-clang-analyzer-cplusplus*
