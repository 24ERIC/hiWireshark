all: t1 t2

t1: Test-1.o
	gcc -o t1 Test-1.o

t2: Test-2.o
	gcc -o t2 Test-2.o

Test-1.0: Test-1.c Test-1.h
	gcc -c Test-1.c

Test-2.0: Test-2.c Test-2.h
	gcc -c Test-2.c

clean:
	rm -f *.o t1 t2