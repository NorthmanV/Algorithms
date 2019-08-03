import UIKit

struct Stack<T> {
    private var array = [T]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func count() -> Int {
        return array.count
    }
    
    mutating func push(_ element: T) {
        array.append(element)
    }
    
    mutating func pop() -> T? {
        return array.popLast()
    }
    
    func peek() -> T? {
        return array.last
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr = self
        return AnyIterator {
            return curr.pop()
        }
    }
}

var stringsStack = Stack<String>()
stringsStack.push("Hello")
stringsStack.push("World")
stringsStack.push("Wow")
stringsStack.pop()
stringsStack.count() // 2

for str in stringsStack {
    print(str) // World Hello
}
