//
//  DoublyLinkedList.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/22/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

public class DoublyLinkedList<T> {
    public typealias T = T
    
    public var head: Node<T>?
    public var tail: Node<T>?
}

extension DoublyLinkedList: Linkable {
    public func node(at index: Int) -> Node<T>? {
        
        var node = head
        
        var counter = 0
        
        while node != nil {
            if counter == index {
                return node
            }
            node = node?.next
            counter += 1
        }
        
        return nil
    }
    
    public func append(value: T) {
        let newNode = Node(value)
        
        if head == nil {
            head = newNode
        } else {
            tail?.next = newNode
            newNode.previous = tail
        }
        tail = newNode
    }
    
    public func remove(node: Node<T>) {
        let previousNode = node.previous
        let nextNode = node.next
        
        if previousNode != nil {
            previousNode?.next = nextNode
        } else {
            head = nextNode
        }
        
        nextNode?.previous = previousNode
        
        if nextNode == nil {
            tail = previousNode
        }
        
        node.previous = nil
        node.next = nil
    }
}

extension DoublyLinkedList: CustomStringConvertible {
    public var description: String {
        var node = head
        
        var text = ""
        
        while node != nil {
            text.append(" \(node!.value) ")
            node = node?.next
        }
        return text
    }
}

var linkedList = DoublyLinkedList<String>()

linkedList.append(value: "Dog")
linkedList.append(value: "Cat")
linkedList.append(value: "Bird")

print(linkedList.node(at: 4)?.value)
linkedList.remove(node: linkedList.node(at: 1)!)
print(linkedList.description)
