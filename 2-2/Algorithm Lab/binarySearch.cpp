#include<bits/stdc++.h>
using namespace std;

int binarySearch(int arr[], int val, int left, int right){

    if(left == right){
        if(val == arr[left]){
            return left;
        }
        return -1;

    } else{
        int mid = (left + right) / 2;
        if(val == arr[mid]){
            return mid;
        } else{
            if(val < arr[mid]){
                return binarySearch(arr, val, left, mid - 1);
            } else{
                return binarySearch(arr, val, mid + 1, right);
            }

        }
    }
}


int main()
{
    int n; 
    cout << "Enter the size of the array: ";
    cin >> n;
    cout << endl;
    
    int arr[n];

    cout << "Enter the elements of the array: ";
    for(int i = 0; i < n; i++){
        cin >> arr[i];
    }
    sort(arr, arr + n);
    
    cout << "Which value you want to search: ";
    int val; cin >> val;

    int ans = binarySearch(arr, val, 0, sizeof(arr) / sizeof(arr[0]));
    cout << ans + 1 << endl;
}