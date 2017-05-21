#include <cstdio>
#include <iostream>

bool  isPrime(long int n)
{
    if (n == 2)     return true;
    if (n == 3)     return true;
    if (n % 2 == 0) return false;
    if (n % 3 == 0) return false;

    long int i = 5;
    long int w = 2;

    while (i * i <= n)
    {
        if (n % i == 0)
            return false;
        i += w;
        w = 6 - w;
    }
    return true;
}

int main(int argc, char *argv[])
{
    auto lines = 0;
    long int first, second;
    scanf("%d", &lines);

    while (lines > 0)
    {
        scanf("%d %d", &first, &second);
        for(auto x = first; x <= second; x++ )
        {
            if (isPrime(x) && x != 1) std::cout << x << '\n';
        }
        lines--;
    }
    return 0;
}
