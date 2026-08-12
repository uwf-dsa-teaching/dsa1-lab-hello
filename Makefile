main:
	g++ -std=c++14 -Wall -o main main.cpp

# check the output of the program
# It should also contain the string with two ids separated by a colon
# It should contain the string "Hello World!"
# Example output:
# UsEr123:DoeJohn
# Hello World!
test-output: clean main
	@echo "Your output:"
	@./main | tee output.txt
	@echo "\nChecking output format..."
	@grep -qE '^[A-Za-z0-9\-]+:[A-Za-z0-9]+$$' output.txt || (echo "Output does not contain valid ID format" && rm output.txt && exit 1)
	@grep -q 'Hello World!' output.txt || (echo "Output does not contain 'Hello World!'" && rm output.txt && exit 1)
	@echo "Output is valid."
	@rm output.txt

clean:
	$(RM) a.out *.o *.gch *.dSYM main output.txt
