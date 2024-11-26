#include<bits/stdc++.h>
using namespace std;
vector<pair<int, int>> vp;
void solveKnapsack(int n, int m){
    vector<pair<double, pair<int, int>>> vProfit;

    for(int i = 0; i < n; i++){
        vProfit.push_back({double(vp[i].second) / vp[i].first, {vp[i].first, vp[i].second}});
    }

    sort(vProfit.rbegin(), vProfit.rend());

    for(auto &i : vProfit){
        cout << i.first << ' ' << i.second.first << ' ' << i.second.second << endl;
    }

    double totalProfit = 0.0, remainingCapacity = m;

    vector<pair<double, pair<int, int>>> solutionVector;



    for (int i = 0; i < n; i++) {
        if (vp[i].first <= remainingCapacity) {
            
            totalProfit += vp[i].second;
            remainingCapacity -= vp[i].first;

            solutionVector.push_back({1, {vp[i].first, vp[i].second}});

        } else {
            double fraction = remainingCapacity / vp[i].first;

            totalProfit += fraction * vp[i].second;
            remainingCapacity = 0;

            solutionVector.push_back({fraction, {vp[i].first, vp[i].second}});

            break;
        }
    }
    cout << "Total profit: " <<  totalProfit << endl;
    for(auto &i : solutionVector){
        cout << i.first << ' ' << i.second.first << ' ' << i.second.second << endl;
    }
    cout << endl;
}
int main()
{
    int n, m; 
    cout << "Enter knapsack size: ";
    cin >> m;
    cout << "Enter the total items number: ";
    cin >> n;
    
    for(int i = 0; i < n; i++){
        int a, b; 
        cout << "Enter weight and profit: ";
        cin >> a >> b;
        vp.push_back({a, b});
    }

    solveKnapsack(n, m);

}