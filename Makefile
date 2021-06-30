# paths
MODULES = ../Block-World
INCLUDE = ../Block-World

# compiler
CC = gcc

# Compile options. Το -I<dir> λέει στον compiler να αναζητήσει εκεί include files
CFLAGS = -Wall -Werror -g -I$(INCLUDE)

# Αρχεία .o
OBJS = blockworld.o $(MODULES)/PRQ.o STACKImplementation.o PQ.o

# Το εκτελέσιμο πρόγραμμα
EXEC = blockworld

# Παράμετροι για δοκιμαστική εκτέλεση
ARGS = '(pm, onaz, bc, dfg, e, j)' '(adgpmj, noc, befz)'
#ARGS = '(plm, oknqaz, bxvc, dhfg, wertyui, js)' '(adgpmj, noc, befzy, qrstuvwxhikl)'

$(EXEC): $(OBJS)
	$(CC) $(OBJS) -o $(EXEC)

clean:
	rm -f $(OBJS) $(EXEC)

run: $(EXEC)
	./$(EXEC) $(ARGS)