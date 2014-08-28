
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

all: A B C b.o

.PHONY: all

# Makefile can automatically 
# syntax for 
#  targets : prerequisites 
#         command            # begin with TAB not SPACES!!!
#         ... 
# or:
#  targets : prerequisites ; command 
#         command 					 # begin with TAB not SPACES!!!
# "@" symbol can stop printing commande to screen

# Makefile can speculate on dependencies of the target, so we can remove a.c and a.h from the prerequisites
A: defs.h											
	@$(CC) $(CFLAGS) -g a.c -o a.exe  

# hiden rules for compiling *.o target
b.o: defs.h											 

B: b.c b.h defs.h
	$(CC) $(CFLAGS) -g b.c -o b.e

C: c.c c.h defs.h
	$(CC) $(CFLAGS) -g c.c -o c.exe

clean:
	rm *.exe *~
