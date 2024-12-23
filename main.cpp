#include <iostream>
#include "classtest.h"

using namespace std;



// int main ()
// {
//     TestA a(40);
//     TestA b;
//     cin >> a;
//     b = a;
//     cout << "hello" <<endl;
//     cout << b.mem << endl;
//     a.add(10, 20);
//     cout << a.getsum() <<  endl;
//     a.limit = 20;
//     cout << a.limit << endl;
// }

void TestFun(string &s1)
{
    try {
        throw s1;
    } catch (...) {
        cout << "Test" << endl;
        throw;
    }
}

int main()
{
    try {
        string s1 = "hello";
        TestFun(s1);

    } catch (string &s) {
        cout << "string" << endl;
    } catch(...) {
        cout << "unknow" << endl;
    }
}