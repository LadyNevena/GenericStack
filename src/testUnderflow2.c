
#include <cstack.h>

#define N 5


Stack* stack;


int main()
{

	/*
	 * try to pop an element after clear is invoked
	 * */
    int testValue = 100;
    int val;

    initStack(sizeof(int), N);

    for(val = 0; val < N; val++)
    {
    	push(&testValue);
    }

    clear();
    stack_err_t retValue = pop(&testValue);

    releaseStack();

    return retValue;

    return 0;

}

