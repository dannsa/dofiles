#include <cstdio>
#include <iostream>


static int c = 0;
int reverse(int org)
{
 
   if (org == 0) return 0;
 
   c *= 10;
   c += (org % 10);
   reverse(org/10);
   return c;
}

int main(int argc, char *argv[])
{
    int lines, first, second;
    scanf("%d", &lines);
    
    while (lines > 0)
    {
        scanf("%d %d", &first, &second);
        auto rev1 = reverse(first);
        c = 0;
        auto rev2 = reverse(second);
        c = 0;
        std::cout << reverse(rev1 + rev2) << '\n';
        c = 0;
        lines--;
    }
    return 0;
}
