#include <iostream>

using namespace std;

class TestA {
public:
    TestA() {};
    TestA(int a) : mem(a) {};
    int add(int a, int b);
    
    inline int getsum() const
    {
        return s;
    }
    TestA operator=(const TestA &a)
    {
        this->mem = a.mem;
        return a;
    }
    
    friend istream &operator>>(istream &in, TestA &a)
    {
        in >> a.mem;
        return in;
    }
private:
    int s = 0;
public:
    static int limit;
    int mem = 0;
};