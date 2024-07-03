#include<stdio.h>
int main()
{
    //declare a two dimentional array as question
    int arr[4][3];

    //taking input to the array
    for(int row = 1; row <= 4; row++){
        for(int col = 1; col <= 3; col++){
            scanf("%d", &arr[row][col]);
        }
    }

    //printing the array
    for(int row = 1; row <= 4; row++){
        for(int col = 1; col <= 3; col++){
            scanf("%d ",arr[row][col]);
        }
        printf("\n");
    }
}