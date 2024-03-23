## Makefile - fichier d'exemple du cours en ligne "Linux embarqué avec Yocto"
##
## https://www.blaess.fr/christophe/yocto-lab/
##
## Christophe BLAESS 2020.
##
## Licence GPL.

CC ?= gcc
CFLAGS += -Wall
EXE = hello-makefile
OBJS = hello-makefile.o
DESTDIR ?= /usr/local/bin


.PHONY: all

all: $(EXE)

# Even if we don't use the LDFLAGS variable in our project, it's important to
# add it on the linker command line for Yocto Project toolchain.

$(EXE): $(OBJS)
	$(CC) $(LDFLAGS) -o $@ $<

%.o: %.c
	$(CC) $(CFLAGS) -c $^

.PHONY: clean

clean:
	rm -f *.o $(EXE)

.PHONY: install

install: $(EXE)
	install -m 0755 -d ${DESTDIR}/
	install -m 0755 ${EXE} ${DESTDIR}/
