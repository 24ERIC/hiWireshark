all: t1

t1: t1.o
	gcc -o t1 t1.o

t1.o: t1.c t1.h
	gcc -c t1.c

clean:
	rm -f *.o t1