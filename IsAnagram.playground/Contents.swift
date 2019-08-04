import UIKit

// 2 * 0(nlogn) + O(n) = O(nlogn)
func isAnagram(firstString: String, secondString: String) -> Bool {
    
    var isMatch = true
    var counter = 0
    var stringsArr1 = Array(firstString)
    var stringsArr2 = Array(secondString)
    
    stringsArr1.sort { $0 < $1 }
    stringsArr2.sort { $0 < $1 }
    
    while counter < stringsArr1.count && isMatch {
        if stringsArr1[counter] == stringsArr2[counter] {
            counter += 1
        } else {
            isMatch = false
        }
    }
    
    return isMatch
}

isAnagram(firstString: "hello", secondString: "olleh")
isAnagram(firstString: "world", secondString: "peace")
