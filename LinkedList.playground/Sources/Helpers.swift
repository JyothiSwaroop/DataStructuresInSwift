import Foundation

// One level of Indirection
public func example(of description: String, action: () -> Void) {
    print("**** Example of \(description) ****")
    action()
    print()
}
