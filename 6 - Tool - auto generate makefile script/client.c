#include<stdio.h>
#include<stdlib.h>
#include<string.h>
#include<sys/socket.h>
#include<arpa/inet.h>
#include<unistd.h>
//Create a Socket for server communication
short SocketCreate(void)
{
}
//try to connect with server
int SocketConnect(int hSocket)
{
}
// Send the data to the server and set the timeout of 20 seconds
int SocketSend(int hSocket,char* Rqst,short lenRqst)
{
}
//receive the data from the server
int SocketReceive(int hSocket,char* Rsp,short RvcSize)
{
}
//main driver program
int main(int argc, char *argv[])
{
}