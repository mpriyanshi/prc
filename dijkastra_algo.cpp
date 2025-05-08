#include <iostream>
#include <vector>
#include <climits>
#include <omp.h>

using namespace std;

#define V 6

// Serial version (must remain sequential)
int minDistance(vector<int>& dist, vector<bool>& sptSet) {
    int min = INT_MAX, min_index = -1;

    for (int v = 0; v < V; v++) {
        if (!sptSet[v] && dist[v] <= min) {
            min = dist[v];
            min_index = v;
        }
    }
    return min_index;
}

void dijkstra(int graph[V][V], int src) {
    vector<int> dist(V, INT_MAX);
    vector<bool> sptSet(V, false);

    dist[src] = 0;

    for (int count = 0; count < V - 1; count++) {
        int u = minDistance(dist, sptSet);
        sptSet[u] = true;

        #pragma omp parallel for
        for (int v = 0; v < V; v++) {
            if (!sptSet[v] && graph[u][v] && dist[u] != INT_MAX) {
                int new_dist = dist[u] + graph[u][v];
                
                // Atomic update to avoid race conditions
                #pragma omp critical
                {
                    if (new_dist < dist[v]) {
                        dist[v] = new_dist;
                    }
                }
            }
        }
    }

    cout << "Vertex \t Distance from Source" << endl;
    for (int i = 0; i < V; i++) {
        cout << i << " \t " << dist[i] << endl;
    }
}

int main() {
    int graph[V][V] = {
        {0, 10, 0, 30, 0, 0},
        {10, 0, 50, 0, 0, 0},
        {0, 50, 0, 20, 10, 0},
        {30, 0, 20, 0, 60, 0},
        {0, 0, 10, 60, 0, 40},
        {0, 0, 0, 0, 40, 0}
    };

    int src = 0;
    dijkstra(graph, src);

    return 0;
}