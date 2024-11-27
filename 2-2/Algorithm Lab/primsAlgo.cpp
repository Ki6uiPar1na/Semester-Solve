#include <iostream>
#include <climits>
using namespace std;

#define MAX 100

void prim(int cost[MAX][MAX], int n) {
    int near[MAX]; // Array to store nearest vertices
    int edges[MAX][2]; // To store edges of the minimum spanning tree
    int mincost = 0;

    // Step 1: Find the minimum cost edge
    int k = -1, l = -1, min = INT_MAX;
    for (int i = 1; i <= n; i++) {
        for (int j = i + 1; j <= n; j++) {
            if (cost[i][j] < min) {
                min = cost[i][j];
                k = i;
                l = j;
            }
        }
    }

    // Add the first edge to the tree
    edges[0][0] = k;
    edges[0][1] = l;
    mincost += cost[k][l];

    // Initialize the near array
    for (int i = 1; i <= n; i++) {
        if (cost[i][k] < cost[i][l])
            near[i] = k;
        else
            near[i] = l;
    }
    near[k] = near[l] = 0; // Mark k and l as included in the tree

    // Step 2: Find n-2 additional edges
    for (int i = 1; i < n - 1; i++) {
        int min = INT_MAX, j = -1;

        // Find the vertex j with minimum cost that is not in the tree
        for (int m = 1; m <= n; m++) {
            if (near[m] != 0 && cost[m][near[m]] < min) {
                min = cost[m][near[m]];
                j = m;
            }
        }

        // Add the edge to the tree
        edges[i][0] = j;
        edges[i][1] = near[j];
        mincost += cost[j][near[j]];
        near[j] = 0; // Mark j as included in the tree

        // Update the near array
        for (int m = 1; m <= n; m++) {
            if (near[m] != 0 && cost[m][j] < cost[m][near[m]])
                near[m] = j;
        }
    }

    // Print the result
    cout << "Edges in the minimum spanning tree:" << endl;
    for (int i = 0; i < n - 1; i++) {
        cout << "(" << edges[i][0] << ", " << edges[i][1] << ")" << endl;
    }
    cout << "Minimum cost: " << mincost << endl;
}

int main() {
    int n;
    cout << "Enter the number of vertices: ";
    cin >> n;

    int cost[MAX][MAX];
    cout << "Enter the adjacency matrix (use a large value for no edge):" << endl;
    for (int i = 1; i <= n; i++) {
        for (int j = 1; j <= n; j++) {
            cin >> cost[i][j];
        }
    }

    prim(cost, n);
    return 0;
}
