#include "hello.h"
#include <stdio.h>
#include "hellodog.h"
#include "helloperson.h"

void PrintfHello()
{
    PrintfDog();
    PrintfPerson();
    printf("hello\n");
}