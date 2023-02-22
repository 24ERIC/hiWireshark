all: malloc

malloc: malloc.o
	gcc -o malloc malloc.o

malloc.o: malloc.c malloc.h
	gcc -c malloc.c

clean:
	rm -f *.o malloc
