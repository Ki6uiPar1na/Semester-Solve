#include <bits/stdc++.h>
using namespace std;

// Global vector to store weights and profits of items
vector<pair<int, int>> vp;

// Function to solve the fractional knapsack problem
void solveKnapsack(int n, int m) {
    // Vector to store profit-to-weight ratio and corresponding weight/profit
    vector<pair<double, pair<int, int>>> vProfit;

    // Calculate profit-to-weight ratio and store it
    for (int i = 0; i < n; i++) {
        vProfit.push_back({double(vp[i].second) / vp[i].first, {vp[i].first, vp[i].second}});
    }

    // Sort items by profit-to-weight ratio in descending order
    sort(vProfit.rbegin(), vProfit.rend());

    // Debug: Print the sorted profit-to-weight ratios
    cout << "Sorted items by profit-to-weight ratio:" << endl;
    for (auto &i : vProfit) {
        cout << "Ratio: " << i.first << ", Weight: " << i.second.first << ", Profit: " << i.second.second << endl;
    }

    // Variables for total profit and remaining knapsack capacity
    double totalProfit = 0.0;
    double remainingCapacity = m;

    // Vector to store the solution (fraction of items included)
    vector<pair<double, pair<int, int>>> solutionVector;

    // Solve the knapsack problem
    for (int i = 0; i < n; i++) {
        if (vProfit[i].second.first <= remainingCapacity) {
            // If the item can fit entirely, take it
            totalProfit += vProfit[i].second.second;
            remainingCapacity -= vProfit[i].second.first;
            solutionVector.push_back({1, {vProfit[i].second.first, vProfit[i].second.second}});
        } else {
            // If the item can't fit entirely, take the fractional part
            double fraction = remainingCapacity / vProfit[i].second.first;
            totalProfit += fraction * vProfit[i].second.second;
            solutionVector.push_back({fraction, {vProfit[i].second.first, vProfit[i].second.second}});
            break; // Knapsack is full
        }
    }

    // Print the results
    cout << "\nTotal profit: " << totalProfit << endl;
    cout << "Items included in the knapsack:" << endl;
    for (auto &i : solutionVector) {
        cout << "Fraction: " << i.first << ", Weight: " << i.second.first << ", Profit: " << i.second.second << endl;
    }
}

int main() {
    int n, m;
    cout << "Enter knapsack size: ";
    cin >> m;
    cout << "Enter the total number of items: ";
    cin >> n;

    // Input weight and profit for each item
    for (int i = 0; i < n; i++) {
        int a, b;
        cout << "Enter weight and profit: ";
        cin >> a >> b;
        vp.push_back({a, b});
    }

    // Solve the knapsack problem
    solveKnapsack(n, m);

    return 0;
}
