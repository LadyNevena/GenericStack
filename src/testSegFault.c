#include <cstack.h>

Stack* stack;


int main()
{
	/*
	 * try to deinit uninitialized stack
	 * */


	stack_err_t retValue = deinit();

	return retValue;

	return 0;
}
