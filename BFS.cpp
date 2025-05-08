#include <iostream>
#include <vector>
#include <queue>
#include <omp.h>

using namespace std;

// Graph representation using adjacency list
class Graph {
public:
    int V; // Number of vertices
    vector<vector<int>> adj; // Adjacency list

    Graph(int V) {
        this->V = V;
        adj.resize(V);
    }

    void addEdge(int u, int v) {
        adj[u].push_back(v);
        adj[v].push_back(u); // Undirected graph
    }

    void parallelBFS(int start) {
        vector<bool> visited(V, false);
        queue<int> q;
        visited[start] = true;
        q.push(start);

        cout << "Parallel BFS Traversal: ";

        while (!q.empty()) {
            // Process current level sequentially (to maintain BFS order)
            int level_size = q.size();
            
            // Print and dequeue nodes at the current level
            for (int i = 0; i < level_size; i++) {
                int node = q.front();
                q.pop();
                cout << node << " ";

                // Explore neighbors in parallel
                #pragma omp parallel for
                for (size_t j = 0; j < adj[node].size(); j++) {
                    int neighbor = adj[node][j];
                    
                    // Use critical section only for marking visited and enqueueing
                    #pragma omp critical
                    {
                        if (!visited[neighbor]) {
                            visited[neighbor] = true;
                            q.push(neighbor);
                        }
                    }
                }
            }
        }
        cout << endl;
    }
};

int main() {
    Graph g(7);
    
    g.addEdge(0, 1);
    g.addEdge(0, 2);
    g.addEdge(1, 3);
    g.addEdge(1, 4);
    g.addEdge(2, 5);
    g.addEdge(2, 6);

    g.parallelBFS(0);

    return 0;
}