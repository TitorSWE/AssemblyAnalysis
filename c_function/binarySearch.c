#include <stdio.h>

int binarySearch(int arr[], int size, int target) {
    int left = 0, right = size - 1;
    while (left <= right) {
        int mid = left + (right - left) / 2;
        if (arr[mid] == target) return mid;
        if (arr[mid] < target) left = mid + 1;
        else right = mid - 1;
    }
    return -1;  // Target not found in the array
}

int main(){
    // Binary Search
    int sortedArray[] = {1, 3, 5, 7, 9, 11, 13, 15, 17, 19};
    int target = 13;
    int resultIndex = binarySearch(sortedArray, sizeof(sortedArray) / sizeof(sortedArray[0]), target);
    if (resultIndex != -1) {
        printf("Element %d found at index %d\n", target, resultIndex);
    } else {
        printf("Element %d not found in the array\n", target);
    }

    return 0;
}