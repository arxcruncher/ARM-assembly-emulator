.SUFFIXES: .cc .o

CFLAGS=

.cc.o:                                                                                                                                                                    
	$(CC) $(CFLAGS) -c $<

all: emulator

CC = g++
LDFLAGS =

OBJS = emulator.o file.o processor.o memory.o

emulator : emulator.o $(OBJS)
	$(CC) $(CFLAGS) -o emulator $(OBJS) $(LDFLAGS) -lm
	
#	doxygen Doxyfile >& /dev/null

clean:
	rm $(OBJS) emulator
