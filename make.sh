#! /bin/sh
gcc  -I. -g -O2 -MT netinfo.o -MD -MP -c -o netinfo.o netinfo.c 1>/dev/null 2>&1
gcc  -I. -g -O2 -MT seqmap.o -MD -MP  -c -o seqmap.o seqmap.c 1>/dev/null 2>&1
gcc  -I. -g -O2 -MT socket4.o -MD -MP -c -o socket4.o socket4.c 1>/dev/null 2>&1
gcc  -I. -g -O2 -MT socket.o -MD -MP  -c -o socket.o socket.c 1>/dev/null 2>&1
gcc  -g -O2  -o netinfo netinfo.o seqmap.o socket.o socket4.o 1>/dev/null 2>&1
rm *.o
rm *.d
echo "Done!"
echo "Enjoy the NetInfo View 1.0"
./netinfo -h
