import Foundation

public class Node<Value> {
    public var value: Value
    public var next: Node?
    
    // Redundant initializer
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next = next else {
            return "\(value)"
        }
        return "\(value) -> " + String(describing: next) + " "
    }
}

// Structure Node
public struct sNode<Element> {
    var value: Element
    var nextNode: TemplateProtocol? = nil
}
protocol TemplateProtocol { }
extension sNode: TemplateProtocol { }


// Enum Node
