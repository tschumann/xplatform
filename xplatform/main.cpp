#include "c.h"
#include "cpp.hpp"

int main()
{
	// run the tests as part of a normal executable rather than dragging in a test framework and setting up a test project etc
	testc();
	testcpp();

	return 0;
}