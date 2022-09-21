CC=gcc
CFLAGS=-Wall -O3
AR=ar rc
RANLIB=ranlib

RM=rm -rf

all:zip.a

zip.o:
	$(CC) $(CFLAGS) -c zip.c -o zip.o

zip.a:zip.o
	$(AR) zip.a zip.o
	$(RANLIB) zip.a

clean:
	$(RM) zip.o zip.a
