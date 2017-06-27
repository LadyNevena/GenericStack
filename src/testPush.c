#include <cstack.h>

#define N 30000

Stack* stack;

int main()
{
	long val;

	stack_err_t retVal = initStack(sizeof(long), N);

	for(val = 29900; val < N; val ++)
	{
		push(&val);

	}


	while(emptyStack() != 1)
	{
		pop(&val);
		printf("%ld", val);
	}

	releaseStack();

	return retVal;


	return 0;

}
