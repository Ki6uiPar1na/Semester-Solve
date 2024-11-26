#include <bits/stdc++.h>
using namespace std;

vector<pair<int, int>> jobs;


void jobSequenceGreedy(int n, int mxDeadline) {

    vector<int> mark(mxDeadline + 1, -1);

    int count = 0; 
    int profit = 0; 

    for (int i = 0; i < n; i++) {

        for (int j = jobs[i].second; j > 0; j--) {
            if (mark[j] == -1) {
                mark[j] = 1;
                profit += jobs[i].first;
                count++;
                break;
            }
        }
    }

    cout << "Total Profit: " << profit << endl;
    cout << "Total Jobs Scheduled: " << count << endl;
}

int main() {
    int n;
    cout << "Enter the number of Jobs: ";
    cin >> n;

    int mxDeadline = INT_MIN;
    cout << "Enter profit and deadline: \n";
    for (int i = 0; i < n; i++) {
        int profit, deadline;
        cin >> profit >> deadline;
        jobs.push_back({profit, deadline});
        mxDeadline = max(mxDeadline, deadline); // Update the maximum deadline
    }

    // Sort jobs by profit in descending order
    sort(jobs.rbegin(), jobs.rend());

    // Call the function to perform job sequencing
    jobSequenceGreedy(n, mxDeadline);

    return 0;
}
