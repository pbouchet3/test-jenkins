OBJS	= main.o
SOURCE	= main.c
HEADER	= 
OUT	= a.out
CC	 = gcc
FLAGS	 = -g -c
LFLAGS	 = 

all: $(OBJS)
	$(CC) -g $(OBJS) -o $(OUT) $(LFLAGS)

main.o: main.c
	$(CC) $(FLAGS) main.c -std=c17

fclean: clean
	rm -f $(OBJS)



clean:
	rm -f $(OBJS) $(OUT)

tests-run: $(OUT)
	./$(OUT)
