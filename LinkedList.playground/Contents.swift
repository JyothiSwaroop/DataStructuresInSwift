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
