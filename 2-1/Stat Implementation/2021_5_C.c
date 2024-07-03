#include<stdio.h>
int main()
{
    int n = 100;

    printf("Even number is: ");
    int i = 2;
    while(i <= 100){
        printf("%d ", i);
        i += 2;
    }
    printf("\n");

    
    i = 1;
    printf("Odd number is: ");
    while(i <= 100){
        printf("%d ", i);
        i += 2;
    }

}