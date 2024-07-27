#include "..\xplatform.h"

#include "test.h"

void testc(void)
{
	printf("Testing as C\n");

	TEST2ARG(__builtin_expect, 0, 0, 0);
	TEST2ARG(__builtin_expect, 0, 0, 1);
}