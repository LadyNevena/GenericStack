#include <cstack.h>

#define N 5


Stack* stack;


int main()
{
	/*
	 * try to pop an element when stack is empty
	 * */
    int testValue = 100;

    initStack(sizeof(int), N);

    stack_err_t retValue = pop(&testValue);

    releaseStack();

    return retValue;


    return 0;

}

