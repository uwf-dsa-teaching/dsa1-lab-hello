SHELL := /bin/bash
CXX = g++
CXXFLAGS = -g -std=c++14 -Wall -Werror=return-type -Werror=uninitialized -Wno-sign-compare
RM = rm -rf

all: main

main: main.cpp
	$(CXX) $(CXXFLAGS) -o $@ $<

test-all: test-output

test-output: clean main
	@echo "Your output:"
	@./main | tee output.txt
	@echo ""
	@echo "Checking output format..."
	@grep -qE '^[A-Za-z0-9\-]+:[A-Za-z0-9]+$$' output.txt || (echo "Output does not contain valid ID format" && rm -f output.txt && exit 1)
	@grep -q 'Hello World!' output.txt || (echo "Output does not contain 'Hello World!'" && rm -f output.txt && exit 1)
	@echo "Output is valid."
	@rm -f output.txt

clean:
	$(RM) a.out *.o *.gch *.dSYM main output.txt

.PHONY: all main test-all test-output clean
