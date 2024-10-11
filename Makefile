CUR=$(shell  pwd)
INC=-I/usr/lib/llvm-14/include -I$(CUR)/tests -I$(CUR)/lib

all: main
	@echo done
main:
	clang++ -lclang $(INC) main.cpp -o main
test:
	clang++ -lclang -lboost_unit_test_framework $(INC) lib/Big3.cpp tests/Big3_test.cpp -o test
clean:
	@rm -f main test
install:
	sudo apt-get install libclang-dev libboost-all-dev
