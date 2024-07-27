#pragma once

#include <stdio.h>

// TODO: figure out a way to spit out the value in case of failure
#define TEST2ARG(func, expected, arg0, arg1) \
	if( func(arg0, arg1) != expected) \
	{ \
		printf("%s(%s, %s) failed \n", #func, #arg0, #arg1);\
	} \
	else \
	{ \
		printf("%s(%s, %s) passed\n", #func, #arg0, #arg1); \
	}