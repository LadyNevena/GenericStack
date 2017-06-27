all: cstack.o  libcstack.a  libcstack.so  testOverflow1.o testOverflow2.o testUnderflow1.o testUnderflow2.o testInit1.o testSegFault.o testPush.o testArray.o  app app2 app3 app4 app5 app6 app7 app8
.PHONY: all
.PHONY: install

cstack.o: libsrc/cstack.c 
	gcc -c -g3 -Wall -fpic libsrc/cstack.c -o libsrc/cstack.o 

libcstack.a: libsrc/cstack.o
	ar rvc lib/libcstack.a libsrc/cstack.o 

libcstack.so: libsrc/cstack.o
	gcc -shared libsrc/cstack.o -o lib/libcstack.so 

install: lib/libcstack.a lib/libcstack.so 
	cp lib/libcstack.a /usr/lib
	cp lib/libcstack.so /usr/lib
	cp libinc/cstack.h /usr/include

testOverflow1.o: src/testOverflow1.c
	gcc -c src/testOverflow1.c  -o build/testOverflow1.o -g
app: build/testOverflow1.o libsrc/cstack.o
	gcc -o build/app build/testOverflow1.o -L build libsrc/cstack.o -g

testOverflow2.o: src/testOverflow2.c 
	gcc -c src/testOverflow2.c  -o build/testOverflow2.o -g
app2: build/testOverflow2.o libsrc/cstack.o
	gcc -o build/app2 build/testOverflow2.o -L build libsrc/cstack.o -g 

testUnderflow1.o: src/testUnderflow1.c
	gcc -c  src/testUnderflow1.c  -o build/testUnderflow1.o -g
app3: build/testUnderflow1.o libsrc/cstack.o
	gcc -o build/app3 build/testUnderflow1.o -L build libsrc/cstack.o -g

testUnderflow2.o: src/testUnderflow2.c 
	gcc -c src/testUnderflow2.c  -o build/testUnderflow2.o -g
app4: build/testUnderflow2.o libsrc/cstack.o
	gcc -o build/app4 build/testUnderflow2.o -L build libsrc/cstack.o -g

testInit1.o: src/testInit1.c 
	gcc -c src/testInit1.c  -o build/testInit1.o -g
app5: build/testInit1.o libsrc/cstack.o
	gcc -o build/app5 build/testInit1.o -L build libsrc/cstack.o -g

testSegFault.o: src/testSegFault.c 
	gcc -c src/testSegFault.c  -o build/testSegFault.o -g
app6: build/testSegFault.o libsrc/cstack.o
	gcc -o build/app6 build/testSegFault.o -L build libsrc/cstack.o -g 

testPush.o: src/testPush.c
	gcc -c src/testPush.c  -o build/testPush.o -g
app7: build/testPush.o libsrc/cstack.o
	gcc -o build/app7 build/testPush.o -L build libsrc/cstack.o -g

testArray.o: src/testArray.c
	gcc -c src/testArray.c  -o build/testArray.o
app8: build/testArray.o libsrc/cstack.o
	gcc -o build/app8 build/testArray.o -L build libsrc/cstack.o -g

 



