#include <stdio.h>
#include <stdlib.h>
#include <omp.h>

#define N 500  // Matrix size

int A[N][N], B[N][N], C[N][N];  // Declare matrices statically

int main() {
    // Initialize matrices with random values
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++) {
            A[i][j] = rand() % 10;
            B[i][j] = rand() % 10;
            C[i][j] = 0;
        }

    // Matrix multiplication with OpenMP parallelization
    #pragma omp parallel for
    for (int i = 0; i < N; i++)
        for (int j = 0; j < N; j++)
            for (int k = 0; k < N; k++)
                C[i][j] += A[i][k] * B[k][j];

    printf("Matrix multiplication completed.\n");

    return 0;
}
