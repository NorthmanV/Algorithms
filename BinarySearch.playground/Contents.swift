import UIKit

func binarySearch<T: Comparable>(array: [T], key: T) -> Int? {
    var low = 0
    var high = array.count
    
    while low < high {
        let mid = (low + high) / 2
        if key < array[mid] {
            high = mid
        } else if key > array[mid] {
            low = mid + 1
        } else if key == array[mid] {
            return mid
        }
    }
    
    return nil
}

let array = [1, 4, 5, 23, 47, 34, 56, 78]
binarySearch(array: array, key: 23) // 3
