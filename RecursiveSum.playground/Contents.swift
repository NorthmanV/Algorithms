import UIKit

func recursiveSum(array: [Int]) -> Int {
    guard let first = array.first else { return 0 }
    return first + recursiveSum(array: Array(array[1..<array.count]))
}

recursiveSum(array: [1, 2, 3]) // 6
recursiveSum(array: [Int]()) // 0
