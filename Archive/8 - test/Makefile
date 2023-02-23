all: test-8

test-8: test-8.o
	gcc -o test-8 test-8.o

test-8.o: test-8.c test-8.h
	gcc -c test-8.c

clean:
	rm -f *.o test-8
