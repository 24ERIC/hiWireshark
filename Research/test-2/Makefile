all: test

test: test.o
	gcc -o test test.o

test.o: test.c test.h
	gcc -c test.c

clean:
	rm -f *.o test
