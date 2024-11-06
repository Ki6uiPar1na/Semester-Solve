#include <bits/stdc++.h>
using namespace std;

#define INF 999999 // A large number representing infinity
#define MAX 1000   // Maximum number of vertices

void dijkstra(int v, int graph[MAX][MAX], int src) {
    int dist[v + 1];       // Array to store the shortest distance from the source
    bool visited[v + 1];   // Array to keep track of visited nodes

    // Initialize all distances as infinity and visited as false
    for (int i = 1; i <= v; i++) {
        dist[i] = INF;
        visited[i] = false;
    }

    // Distance from source to itself is 0
    dist[src] = 0;

    // Find the shortest path for all vertices
    for (int count = 1; count <= v - 1; count++) {
        int minDistance = INF, u;

        // Pick the minimum distance vertex from the set of vertices not yet processed
        for (int i = 1; i <= v; i++) {
            if (!visited[i] && dist[i] < minDistance) {
                minDistance = dist[i];
                u = i;
            }
        }

        // Mark the picked vertex as processed
        visited[u] = true;

        // Update dist value of the adjacent vertices of the picked vertex
        for (int i = 1; i <= v; i++) {
            // Update dist[i] only if it is not visited, there is an edge from u to i, 
            // and the total weight of the path from src to i through u is smaller than the current value of dist[i]
            if (!visited[i] && graph[u][i] && dist[u] != INF && dist[u] + graph[u][i] < dist[i]) {
                dist[i] = dist[u] + graph[u][i];
            }
        }
    }

    // Print the distance from the source to each vertex
    for (int i = 1; i <= v; i++) {
        cout << "Vertex " << i << " Distance from Source " << src << " is : ";
        if (dist[i] == INF) {
            cout << "Infinity" << endl;
        } else {
            cout << dist[i] << endl;
        }
    }
}

int main() {
    int N, m;
    cin >> N >> m; // Number of vertices and edges

    int graph[MAX][MAX] = {0}; // Adjacency matrix to store graph

    // Read the edges and weights
    for (int i = 0; i < m; i++) {
        int u, v, weight;
        cin >> u >> v >> weight;
        graph[u][v] = weight;
        graph[v][u] = weight; // If the graph is undirected
    }

    int src;
    cin >> src; // Source vertex

    dijkstra(N, graph, src);

    return 0;
}
