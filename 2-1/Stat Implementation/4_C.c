#include<stdio.h>
int main()
{
    int sum = 0;
    for(int i = 30; i <= 120; i++){
        if(i % 3 == 0 && i % 5 == 0){
            sum += i;
        }
    }
    printf("Sum is :%d ", sum);
}