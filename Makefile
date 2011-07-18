CC=gcc
CFLAGS=-Wall -I/usr/local/include 
LDFLAGS=-L/usr/local/lib -lccn -lcrypto -lpcap

ndndump: ndndump.c
	$(CC) ndndump.c -o ndndump $(CFLAGS) $(LDFLAGS)

install: ndndump
	cp ndndump /usr/bin/

clean:
	rm ndndump

uninstall:
	rm /usr/bin/ndndump
