#include <stdio.h>
#include "hello.h"

typedef struct {
    int x;
    int y;
} Point;

typedef unsigned char uint8;
typedef unsigned short uint16;


typedef unsigned char Test_t;

volatile uint8 g_testvol = 10;

void funasm()
{
    int a, b;

    a = 1;
    b = 2;
    asm("mov %0, %1\n\t" :"=r"(a):"r"(b));
    printf("asm a : %d b : %d\n", a, b);
}

int main()
{
    int i = 10;
    uint8 b = g_testvol;
    g_testvol = 15;
    Test_t c = b << 1u;
    printf("%d\n", i);
    printf("%d\n", b);
    printf("%d\n", c);
    PrintfHello();
    funasm();
}