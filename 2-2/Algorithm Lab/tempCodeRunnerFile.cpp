#include <bits/stdc++.h>
using namespace std;

void bellmanFord(int v, int arr[][3], int m, int src) {
    int dist[v + 1];
    int predecessor[v + 1]; // Array to store the predecessor of each vertex

    // Initialize distances and predecessor array
    for (int i = 1; i <= v; i++) {
        dist[i] = INT_MAX;
        predecessor[i] = -1; // No predecessor initially
    }

    dist[src] = 0; // Distance from source to itself is zero

    // Relax edges |V| - 1 times
    for (int i = 1; i <= v - 1; i++) {
        for (int j = 0; j < m; j++) {
            int u = arr[j][0];
            int v = arr[j][1];
            int weight = arr[j][2];

            if (dist[u] != INT_MAX && (dist[u] + weight) < dist[v]) {
                dist[v] = dist[u] + weight;
                predecessor[v] = u; // Set the predecessor
            }
        }
    }

    // Print the shortest distance from the source to each vertex
    for (int i = 1; i <= v; i++) {
        cout << "Vertex " << i << " Distance from Source " << src << " is: " << dist[i] << endl;
        if (dist[i] != INT_MAX) {
            cout << "Path: ";
            vector<int> path;
            for (int j = i; j != -1; j = predecessor[j]) {
                path.push_back(j);
            }
            reverse(path.begin(), path.end()); // Reverse the path to get the correct order
            for (int j = 0; j < path.size(); j++) {
                cout << path[j];
                if (j < path.size() - 1) {
                    cout << " -> "; // Print the path arrow
                }
            }
            cout << endl; // New line after the path
        } else {
            cout << "No path from source to vertex " << i << endl; // No path case
        }
    }
}

int main() {
    int N, m;
    cout << "Enter number of vertices and number of edges: ";
    cin >> N >> m;
    int arr[m][3];

    cout << "Enter edges in the format (u v weight):\n";
    for (int i = 0; i < m; i++) {
        cin >> arr[i][0] >> arr[i][1] >> arr[i][2];
    }

    int src; 
    cout << "Enter source vertex: ";
    cin >> src;

    bellmanFord(N, arr, m, src);

    return 0;
}
