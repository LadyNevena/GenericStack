#include <cstack.h>

Stack* stack;

typedef struct Point
{
       int i;
       int j; 
}Point;

	int main()
	{

		/*
		 * try to push an element when stack is full
		 * */
	    int val;

	    Point p, p1;
	    p1.i = 10;
	    p1.j = 11;

	    initStack(sizeof(Point), 5);

	    for(val = 0; val < 5; val++)
	    {
	                          p.i = val;
	                          p.j = val*val;
	                          push(&p);
	    }

	    stack_err_t retValue = push(&p1);

	    releaseStack();

	    return retValue;

	    return 0;

}


