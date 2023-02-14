all: Socket-server Socket-client

Socket-server: Socket-server.o
	gcc -o Socket-server Socket-server.o

Socket-client: Socket-client.o
	gcc -o Socket-client Socket-client.o

Socket-server.o: Socket-server.c
	gcc -c Socket-server.c

clean:
	rm -f *.o Socket-server Socket-client