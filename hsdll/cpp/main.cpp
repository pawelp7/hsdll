// Tester.cpp
//#include "HsFFI.h"
#define  _CRT_SECURE_NO_WARNINGS
#include "../hs/dist/build/Punktor_stub.h"
#include <cstdio>
#include <string>

#pragma comment(lib, "../hs/hsdll.dll.a")

extern "C" {
	void HsStart();
	void HsEnd();
}

struct HaskellRuntime
{
	HaskellRuntime()
	{
		int argc = 1;
		char* argv[] = { "ghcDll", NULL }; // argv must end with NULL
		char** args = argv;
		hs_init(&argc, &args);
	}

	~HaskellRuntime()
	{
		hs_exit();
	}
};

int main()
{
	HaskellRuntime hs;
	printf("12 + 2 = %i\n", foo(12));
	auto ret = bar(4, "foo");

	return 0;
}