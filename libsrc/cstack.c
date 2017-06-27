#include <cstack.h>
//#include <pthread.h>

extern Stack* stack;
//pthread_mutex_t mutex ;

stack_err_t initStack(size_t elemSize, size_t stackSize)
{
	if(elemSize < 32768 && stackSize < 32768)
	{


	    stack = (Stack*)malloc(sizeof(Stack));
		//pthread_mutex_init(&stack -> mutex, NULL);

		stack -> elemSize = elemSize;
		stack -> stackSize = stackSize;
		stack -> index = -1;
		stack -> data = malloc(elemSize * stackSize);


		return NOERR;
	}

	return INITERR;
}


stack_err_t releaseStack()
{


	if(stack == NULL)
	{
		return SEGFAULT;
	}

    free(stack -> data);
    free(stack);



	return NOERR;
}

int emptyStack()
{
    if(stack -> index == -1)
    {
                return 1;
    }
    return 0;
}

stack_err_t clear()
{
	if(stack == NULL)
		{
			return SEGFAULT;

		}

	if(stack -> data != NULL)
	{
		stack -> index = -1;

		return NOERR;
	}


	return DEINITERR;

}

stack_err_t deinit()
{
	if(stack == NULL)
	{
		return SEGFAULT;

	}

	releaseStack();

	stack -> data = NULL;

	if(stack -> data == NULL)
	{
		return DEINITERR;
	}

	return NOERR;

}

stack_err_t push(void* elemAddr)
{
	if(stack == NULL)
	{
		return SEGFAULT;
	}

    if(stack -> index > -1 && stack -> index < stack -> stackSize)
     {
          stack -> index++;
          void* destAddr;

          destAddr = (char*)stack -> data + stack -> index * stack -> elemSize;
          memcpy(destAddr, elemAddr, stack -> elemSize);

          return NOERR;
     }

    return STACKOVERFLOW;
}

stack_err_t pop(void* elemAddr)
{
	if(stack == NULL)
	{
		return SEGFAULT;

	}


    if(stack -> index > -1)
    {
          void* sourceAddr;
          sourceAddr = (char*)stack -> data + stack -> index * stack -> elemSize;

          memcpy(elemAddr, sourceAddr, stack -> elemSize);
          stack -> index--;

          return NOERR;
     }

     return STACKUNDERFLOW;

}

