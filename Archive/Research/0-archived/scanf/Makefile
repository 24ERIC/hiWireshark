all: dvsnf

dvsnf: dvsnf.o
	gcc -o dvsnf dvsnf.o

dvsnf.o: dvsnf.c dvsnf.h
	gcc -c dvsnf.c

clean:
	rm -f *.o dvsnf
