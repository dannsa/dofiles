#include <stdio.h>
#include <iostream>
int main(int argc, char *argv[])
{
    auto x = 0;
    while(scanf("%d", &x) == 1 && x != 42)
        std::cout << x <<'\n';
    
    return 0;
}
