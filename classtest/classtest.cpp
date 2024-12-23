#include "classtest.h"

int TestA::limit = 10;

int TestA::add(int a, int b)
{
    this->s = a + b;
    return this->s;
}