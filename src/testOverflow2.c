#include <cstack.h>

#define N 5


Stack* stack;

typedef struct Point
{
       int i;
       int j;
}Point;

int main()
{


	/*
	 *
	 * try to push char arrays on full stack
	 * */
    int val;

    char string1[50] = "drink";
    char string2[5] = "beer";

    initStack(sizeof(char), N);

    for(val = 0; val < 5; val++)
    {
    	strcat(string1, "Beer");
    	push(string1);
    }

    stack_err_t retValue = push(string2);

    releaseStack();

    return retValue;

    return 0;

}


