#include<stdio.h>
int main()
{
    float height, weight;
    printf("Enter height in meter: ");
    scanf("%f", &height);

    printf("Enter weight in kg: ");
    scanf("%f", &weight);

    float BMI = weight / (height * height);

    printf("BMI is %f\n", BMI);

    if(BMI < 18.5){
        printf("BMI Catagory is Underweight\n");
    }
    else if(18.5 <= BMI && BMI < 25){
        printf("You are in normal weight\n");
    }
    else if(25 <= BMI && BMI < 30){
        printf("You are in Overweight\n");
    }
    else{
        printf("Your have Obesity\n");
    }
}