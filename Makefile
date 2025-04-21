CC = gcc

CFLAGS = -Wall -pthread

TARGET = HTTP_Client HTTP_Server

SRCS = HTTP_Client.c HTTP_Server.c

OBJS = HTTP_Client.o HTTP_Server.o




all: $(TARGET)



$(TARGET):$(OBJS)
	$(CC)  $(CFLAGS) HTTP_Client.o -o HTTP_Client
	$(CC)  $(CFLAGS) HTTP_Server.o -o HTTP_Server

$(OBJS): $(SRCS)
	$(CC) $(CFLAGS) -c HTTP_Client.c 
	$(CC) $(CFLAGS) -c HTTP_Server.c 


clean: $(TARGET)
	rm  $(OBJS) $(TARGET)