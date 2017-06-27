#!/bin/bash


declare -a arr=("NOERR" "STACKOVERFLOW" "STACKUNDERFLOW" "MEMLEAK" "INITERR" "DEINITERR" "NOTEMPTY" "SEGFAULT")



build/./app
value1=$?
echo "$(tput setab 7) $(tput setaf 1)Data type: Point structure STATUS:${arr[$value1]} = Try to push on full stack $(tput sgr 0)"
echo "$(tput setab 7) $(tput setaf 1)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app
echo " "

build/./app2
value2=$?
echo "$(tput setab 7)$(tput setaf 2)Data type: String STATUS: ${arr[$value2]} = Try to push on full stack $(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 2)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app2
echo " "

build/./app3
value3=$?
echo "$(tput setab 7)$(tput setaf 3)STATUS: ${arr[$value3]} = Try to pop an item from empty stack $(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 3)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app3
echo " "


build/./app4
value4=$?
echo "$(tput setab 7)$(tput setaf 4)Data type: Integer STATUS:${arr[$value4]} = Try to pop an item after clear is invoked $(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 4)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app4
echo " "

build/./app5
value5=$?
echo "$(tput setab 7)$(tput setaf 5)Element size > 32768 bytes STATUS: ${arr[$value5]}$(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 5)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app5
echo " "


build/./app6
value6=$?
echo "$(tput setab 7)$(tput setaf 6)Data type: Integer STATUS:  ${arr[$value6]} = Try deinit uninitialized stack. $(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 6)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app6
echo " "

build/./app7
value7=$?
echo "$(tput setab 7)$(tput setaf 1)Data type: Long ${arr[$value7]} = Push and pop. $(tput sgr 0)" 
echo "$(tput setab 7)$(tput setaf 1)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app7
echo " "

build/./app8
value8=$?
echo "$(tput setab 7)$(tput setaf 2)Data type: Integer array ${arr[$value8]}"
echo "$(tput setab 7)$(tput setaf 2)Valgrind output:$(tput sgr 0)"
valgrind --tool=memcheck build/./app8
echo " "

