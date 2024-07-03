#include<stdio.h>
int main()
{
    int n;
    printf("Enter how much number: ");
    scanf("%d", &n);
    float sum = 0;
    for(int i = 1; i <= n; i++){
        if(i % 2 != 0){
            sum += (1 / i);
        }
    }
    printf("Total sum is: %f\n", sum);
}