//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

example(of: "creating and linking node") {
    let node1 = Node(value: 1)
    let node2 = Node(value: 2)
    let node3 = Node(value: 3)
    
    node1.next = node2
    node2.next = node3
    
    print(node1)
}

example(of: "Push") {
    var list = LinkedList<Int>()
    list.push(3)
    list.push(2)
    list.push(1)
    
    print(list)
}

example(of: "Append") {
    var list = LinkedList<Any>()
    
    list.append(1)
    list.append("Two")
    list.append(3.0)
    
    print(list)
}
