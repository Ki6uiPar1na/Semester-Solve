#include<bits/stdc++.h>
using namespace std;

//function for factorial
int factorial (int n){
    if(n <= 1) return n;
    return n * factorial (n - 1);
}

//function for print fibonacci series
int fibonacciSeries(int n){
    if(n <= 1) return n;
    return fibonacciSeries(n - 1) + fibonacciSeries(n - 2);
}

//function of simple calculator
void simpleCalculator(){
    int a, b; 
    cout << "Enter first number: ";
    cin >> a;
    cout << "Enter second number: ";
    cin >> b;

    char ch; 
    cout << "Choose operation: (+, -, *, /, %): ";
    cin >> ch;
    if(ch == '+'){
        cout << "Sum of your two number is: " << a + b << endl;
    }
    else if(ch == '-'){
        cout << "Minus of your two number is: " << a - b << endl;
    }
    else if(ch == '*'){
        cout << "Multiplication of your two number is: " << a * b << endl;
    }
    else if(ch == '/'){
        if(b <= 0){
            cout << "Divisor can't be zero" << endl;
            return;
        }
        cout << "Division answer is: " << a / b << endl;
    }
    else if(ch == '%'){
        if(b <= 0){
            cout << "Divisors can't be zero \n";
            return;
        }
        cout << "Modules answer is: " << a % b << endl;
    }
    else{
        cout << "Select correct operator\n";
    }
}

//print n prime number
void printPrimeNumber(int n){
    for(int i = 1; i <= n; i += 2){
        bool flag = false;
        for(int j = 2; j < i; j++){
            if(i % j == 0){
                flag = true;
            }
        }
        if(flag){
            cout << i << ' ';
        }
    }
    cout << endl;
}

//sum of digit function
int sumOfDigit(int n){
    int sum = 0;
    while(n){
        sum += n % 10;
        n /= 10;
    }
    return sum;
}


//main function
int main()
{
    //initialize and take input of value N
    int n; 
    cout << "Enter the value of N: ";
    cin >> n;
    
    //determine factorial and print answer
    cout << "factorial of this number is: " << factorial (n) << endl;

    //print the fibonacci series

    int fibonacci; 
    cout << "How many fibonacci number you want to print: ";
    cin >> fibonacci;
    int cn = 0;
    while(cn < fibonacci){
        cout << fibonacciSeries(cn) << ' ';
        cn++;
    }
    cout << endl;

    //call simple calculator function to execute

    simpleCalculator();

    //call pintPrime() function to print first n prime number

    // printPrimeNumber(10);
    printPrimeNumber(10);
    //call sumOfDigit() function

    cout << "Digit sum of your enter number is: " << sumOfDigit(1234) << endl;

    return 0;

}