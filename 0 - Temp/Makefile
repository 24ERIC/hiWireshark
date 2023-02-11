all: t1

t1: Test-1.o
	gcc -o t1 Test-1.o

Test-1.0: Test-1.c Test-1.h
	gcc -c Test-1.c

clean:
	rm -f *.o t1