import Foundation

public class Node<Value> {
    public var value: Value
    public var next: Node?
    
    // ?Redundant initializer?
    // Classes do force to provide a default initializer
    // Structures do not need an initializer and
    // Structures forces to provide you the type of properties declared.
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
