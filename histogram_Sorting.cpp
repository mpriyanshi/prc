#include <iostream>
#include <vector>
#include <omp.h>

void histogram_sort(std::vector<int>& data, int range) {
    std::vector<int> histogram(range, 0);
    
    // Parallel histogram computation
    #pragma omp parallel for
    for (size_t i = 0; i < data.size(); i++) {
        #pragma omp atomic
        histogram[data[i]]++;
    }

    // Reconstruct sorted data from histogram
    size_t index = 0;
    for (int value = 0; value < range; value++) {
        for (int count = 0; count < histogram[value]; count++) {
            data[index++] = value;
        }
    }
}

int main() {
    std::vector<int> data = {5, 3, 8, 3, 1, 2, 2, 5, 8, 8, 1, 3};
    int range = 10; // Assume elements are in the range [0, 9]

    histogram_sort(data, range);

    std::cout << "Sorted Data: ";
    for (int num : data) {
        std::cout << num << " ";
    }
    std::cout << std::endl;

    return 0;
}