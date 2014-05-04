# MACROS

SRCPATH		= ./src
INCPATH		= ./include
OBJPATH		= ./obj
INSTPATH	= ./bin
CC		= g++
CFLAGS		= -g -Wall -I$(INCPATH)


# TARGETS

all: getobj main getinput guess putobj

main: main.o
	$(CC) $(CFLAGS) -o $(INSTPATH)/main main.o

getinput: get_input.o
	$(CC) $(CFLAGS) -o $(INSTPATH)/getinput get_input.o

guess: guess.o
	$(CC) $(CFLAGS) -o $(INSTPATH)/guess guess.o

main.o: $(SRCPATH)/main.cpp
	$(CC) $(CFLAGS) -c $(SRCPATH)/main.cpp

get_input.o: $(SRCPATH)/get_input.cpp
	$(CC) $(CFLAGS) -c $(SRCPATH)/get_input.cpp

guess.o: $(SRCPATH)/guess.cpp
	$(CC) $(CFLAGS) -c $(SRCPATH)/guess.cpp

getobj:
	-mv $(OBJPATH)/*.o .

putobj:
	-mv *.o $(OBJPATH)

clean:
	-rm -f app
	-rm -f $(OBJPATH)/*.o
	-rm -f $(INSTPATH)/*
