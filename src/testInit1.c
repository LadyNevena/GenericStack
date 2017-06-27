#include <cstack.h>

Stack* stack;


int main()
{

    /*stack element  > 32768*/
	stack_err_t retValue = initStack(sizeof(char)*50000, 10);

	return retValue;

	return 0;
}
