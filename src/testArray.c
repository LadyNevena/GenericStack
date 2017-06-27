#include <cstack.h>

#define N 10

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
	    int k;
	    Point arr[N];

	    Point p, p1;
	    p1.i = 10;
	    p1.j = 11;


	    initStack(sizeof(arr), N);

	    for(val = 0; val < N; val++)
	    {
	    	p.i = val;
	    	p.j = val*val;
	    	arr[val] = p;
	    	push(&arr);
	    }
	    printf("aaaa");
	    while(emptyStack() != 1)
	    	{
	    		pop(&arr);
	    		for(k = 0; k < N; k++)
	    		{
	    			printf("(%d,%d) ", arr[k].i, arr[k].j);
	    		}
	    		printf("\n");
	    		//printf("%ld", val);
	    	}


	    releaseStack();

	   // return retValue;

	    return 0;

}

