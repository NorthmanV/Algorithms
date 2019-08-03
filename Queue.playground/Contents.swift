import UIKit

struct SimpleQueue<T> {
    private var array = [T]()
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func count() -> Int {
        return array.count
    }
    
    mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating func dequeue() -> T? {
        return array.isEmpty ? nil : array.removeFirst()
    }
    
    func peek() -> T? {
        return array.first
    }
    
}

var integersQueue = SimpleQueue<Int>()
integersQueue.enqueue(100)
integersQueue.dequeue()
integersQueue.peek() // nil


struct OptimizedQueue<T> {
    
}
