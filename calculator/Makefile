objects = addition.o division.o main.o multiplication.o subtraction.o

calculator: $(objects)
	cc -o calculator $(objects)

$(objects): %.o:%.c
	cc -c $< -o $@
	
clean: 
	rm -f $(objects)

.PHONY: clean
