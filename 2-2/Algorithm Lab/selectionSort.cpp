#include<bits/stdc++.h>
using namespace std;
void selectionSort(int n, int arr[]){
    for(int i = 0; i < n; i++){
        int minIndex = i;
        for(int j = i; j < n; j++){
            if(arr[j] < arr[minIndex]){
                minIndex = j;
                swap(arr[i], arr[minIndex]);
            }
        }
    }
}
int main()
{
    int n = 5, arr[] = {5, 4, 3, 2, 1};
    selectionSort(n, arr);
    cout << "Sorted array: ";
    for(int i = 0; i < n; i++){
        cout << arr[i] << ' ';
    }
    cout << endl;
}