CC = gcc

# Development
#CFLAGS = -O3 -c -Wall -Wextra -fstack-protector-all -D_FORTIFY_SOURCE=2 

# Production
CFLAGS = -O3 -c -Wall -Wextra -U_FORTIFY_SOURCE 

LFLAGS =

OBJ =	sim0.o \
	sim1.o \
	sim1a.o \
	sim2.o \
	sim3.o \
	sim4.o \
	sim5.o \
	sim6.o \
	sim7.o \
	simctl.o \
	disas.o	\
	simint.o \
	memory.o \
	iosim.o	\
	simfun.o \
	simglb.o \
	simbdos.o \
	config.o \
	unix_terminal.o \
	mostek-cpu.o \
	mostek-fdc.o

../sim : $(OBJ)
	$(CC) $(OBJ) $(LFLAGS) -o ../sim

sim0.c:
	./lnsrc

sim0.o : sim0.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim0.c

sim1.o : sim1.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim1.c

sim1a.o : sim1a.c sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim1a.c

sim2.o : sim2.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim2.c

sim3.o : sim3.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim3.c

sim4.o : sim4.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim4.c

sim5.o : sim5.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim5.c

sim6.o : sim6.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim6.c

sim7.o : sim7.c	sim.h simglb.h config.h memory.h
	$(CC) $(CFLAGS) sim7.c

simctl.o : simctl.c sim.h simglb.h memory.h ../../iodevices/mostek-fdc.h ../../iodevices/unix_terminal.h
	$(CC) $(CFLAGS) simctl.c

disas.o	: disas.c
	$(CC) $(CFLAGS) disas.c

simint.o : simint.c sim.h simglb.h
	$(CC) $(CFLAGS) simint.c

memory.o : memory.c sim.h
	$(CC) $(CFLAGS) memory.c

iosim.o	: iosim.c sim.h	simglb.h simbdos.h ../../iodevices/mostek-cpu.h ../../iodevices/mostek-fdc.h
	$(CC) $(CFLAGS) iosim.c

simfun.o : simfun.c sim.h
	$(CC) $(CFLAGS) simfun.c

simglb.o : simglb.c sim.h
	$(CC) $(CFLAGS) simglb.c

simbdos.o : simbdos.c sim.h simglb.h memory.h
	$(CC) $(CFLAGS) simbdos.c

config.o : config.c simglb.h sim.h
	$(CC) $(CFLAGS) config.c

unix_terminal.o : ../../iodevices/unix_terminal.c
	$(CC) $(CFLAGS) ../../iodevices/unix_terminal.c

mostek-cpu.o: ../../iodevices/mostek-cpu.c ../../iodevices/unix_terminal.h sim.h simglb.h
	$(CC) $(CFLAGS) -I./ ../../iodevices/mostek-cpu.c

mostek-fdc.o: ../../iodevices/mostek-fdc.c sim.h simglb.h
	$(CC) $(CFLAGS) -I./ ../../iodevices/mostek-fdc.c

clean:
	rm -f *.o
	./ulnsrc

allclean:
	make clean
	rm -f ../sim
