
objects = a.c b.c c.c a.h b.h c.h
SRC = a.c b.c c.c
headers = a.h b.h c.h
VPATH = ./:include:
CC = gcc
CFLAGS = -Iinclude -O2

# the first target is the default target : default_target is not a keyword
default_target: all

# the .PHONY meaning : target is a pseudo one
.PHONY: default_target

all: A B C

.PHONY: all

A: defs.h
	$(CC) $(CFLAGS) -g a.c -o a.exe

B: b.c b.h defs.h
	$(CC) $(CFLAGS) -g b.c -o b.exe

C: c.c c.h defs.h
	$(CC) $(CFLAGS) -g c.c -o c.exe

clean:
	rm *.exe *~
