import Foundation

// Linked List to manage Node objects
// 3 Params: head, tail, isEmpty
public struct LinkedList<Value> {
    
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public var isEmpty: Bool {
        return head == nil
    }

    public init() { }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        guard let head = head else {
            return "Empty List"
        }
        return String(describing: head)
    }
}

// ?Protocol with Generics is possible?
// Declaring an interface to perform operations on LinkedList
//protocol ListOperations {
//    func push(_ value: Value)
//    func append(_ value: Value)
//}
//extension LinkedList: ListOperations { }

extension LinkedList {

    // Head-first insertion
    // Add value at front of the List
    public mutating func push(_ value: Value) {
        head = Node(value: value, next: head)
        if tail == nil {
            tail = head // Implies that Head and Tail points to same node
        }
    }
    
    public mutating func append(_ value: Value) {
        guard !isEmpty else {
            push(value)
            return
        }
        
        // New node added to the Linked List tail node
        tail!.next = Node(value: value)
        
        print(tail!.next!)
        // ?? Tail is nil
        tail! = tail!.next!
    }
}
