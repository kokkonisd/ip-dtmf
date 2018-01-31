CC = gcc
CFLAGS = -Wall -g
LFLAGS = -lm

all : tab_sin_generator

tab_sin_generator : tab_sin_generator.o
	$(CC) $(CFLAGS) tab_sin_generator.o -o tab_sin_generator $(LFLAGS)

tab_sin_generator.o : tab_sin_generator.c
	$(CC) $(CFLAGS) -c $< $(LFLAGS)

clean :
	rm -rf tab_sin_generator.o tab_sin_generator 

.PHONY : all clean