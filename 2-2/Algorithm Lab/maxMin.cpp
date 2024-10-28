#include<bits/stdc++.h>
using namespace std;
#define N 5
int arr[N + 1];

int mx = INT_MIN, mn = INT_MAX;

void maxMin(int left, int right, int &mx, int &mn) {
    if (left == right) {
        // Single element case
        mx = mn = arr[left];
    } else {
        int mid = (left + right) / 2;
        int mx1 = INT_MIN, mn1 = INT_MAX;
        int mx2 = INT_MIN, mn2 = INT_MAX;

        // Recursively find max and min in the left half
        maxMin(left, mid, mx1, mn1);
        
        // Recursively find max and min in the right half
        maxMin(mid + 1, right, mx2, mn2);

        // Update the overall maximum and minimum
        mx = max(mx1, mx2);
        mn = min(mn1, mn2);
    }
}


int main()
{

    cout << "Enter the elements of the array: ";
    for(int i = 1; i <= N; i++){
        cin >> arr[i];
    }

    maxMin(1, N, mx, mn);

    cout << mx << ' ' << mn << endl;
}