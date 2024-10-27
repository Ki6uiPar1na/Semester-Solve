#include<bits/stdc++.h>
using namespace std;

void bellmanFord(int v, int arr[][3], int m, int src){
    int dist[v + 1];

    for(int i = 1; i <= v; i++){
        dist[i] = INT_MAX;
    }

    dist[src] = 0;

    for(int i = 1; i <= v - 1; i++){
        for(int i = 0; i < m; i++){
            int u = arr[i][0];
            int v = arr[i][1];
            int weight = arr[i][2];

            if(dist[u] != INT_MAX and (dist[u] + weight) < dist[v]){
                dist[v] = dist[u] + weight;
            }
        }
    }

    for(int i = 1; i <= v; i++){
        cout << "Vertex " << i << " Distance from Source " << src << " is : " << dist[i] << endl;
    }
}


int main()
{
    int N, m;
    cin >> N >> m;
    int arr[m][3];

    for(int i = 0; i < m; i++){
        cin >> arr[i][0] >> arr[i][1] >> arr[i][2];
    }

    int src; cin >> src;

    bellmanFord(N, arr, m, src);

}