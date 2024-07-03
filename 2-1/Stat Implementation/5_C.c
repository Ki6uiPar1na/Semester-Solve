#include<stdio.h>
int main()
{
    int n; 
    printf("Enter how many number: ");
    scanf("%d", &n);
    int numbers[n];
    float sum = 0;
    for(int i = 0; i < n; i++){
        scanf("%d", &numbers[i]);
        sum += numbers[i];
    }
    float meanAns = (sum / n);
    printf("Mean is : %f\n", meanAns);


    float varience = 0;
    for(int i = 0; i < n; i++){
        varience += (numbers[i] - meanAns) * (numbers[i] - meanAns);
    }

    varience = varience / n;

    printf("Varience is : %f", varience);
}