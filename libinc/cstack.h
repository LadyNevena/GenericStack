#ifndef STACK_H_
#define STACK_H_

#include <stdio.h>
#include <string.h> //memcpy
#include <stdlib.h> //malloc

typedef struct Stack
{
        void* data;
        size_t elemSize;
        size_t stackSize;
        size_t index;
}Stack;

typedef enum stack_err_t {NOERR, STACKOVERFLOW, STACKUNDERFLOW, MEMLEAK, INITERR, DEINITERR,  NOTEMPTY, SEGFAULT} stack_err_t;

/*
*allocate space and sets up stack
*/
stack_err_t initStack(size_t elemSize, size_t stackSize);

/*
 * deinit
 * */
stack_err_t deinit();


/*
*frees stack memory
*/
stack_err_t releaseStack();


/*
*check empty stack
*/
int emptyStack();


/*
*pushes an item on the stack
*/
stack_err_t push(void* elemAddr);


/*
*pops an item off the stack
*/
stack_err_t pop(void* elemAddr);


/*
 * clears everything from the stack
 */
stack_err_t clear();

#endif
