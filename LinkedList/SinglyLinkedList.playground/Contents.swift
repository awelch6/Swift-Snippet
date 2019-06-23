//
//  SinglyLinkedList.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/22/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

class SinglyLinkedList<T> {
    
    typealias T = T
    
    var head: Node<T>?
}

// MARK: Default implementation of Linkable

extension SinglyLinkedList: Linkable {
    
    func node(at index: Int) -> Node<T>? {
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
    
    func append(value: T) {
        let newNode = Node(value)
        
        if head == nil {
            head = newNode
            return
        }
        
        var node = head
        
        while node != nil {
            if node?.next == nil {
                node?.next = newNode
                return
            }
            node = node?.next
        }
        
    }
    
    func remove(node: Node<T>) {
        if head === node {
            head = node.next
            return
        }
        
        var tempNode = head
        
        while tempNode != nil {
            
            // look for node to remove and update the links
            if tempNode?.next === node {
                tempNode?.next = node.next
            }
            
            tempNode = tempNode?.next
        }
    }
}

extension SinglyLinkedList: CustomStringConvertible {
    var description: String {
        var node = head
        
        var text = ""
        
        while node != nil {
            text.append(" \(node!.value) ")
            node = node?.next
        }
        return text
    }
}

 var singleLinked = SinglyLinkedList<String>()
 
 singleLinked.append(value: "Dog")
 singleLinked.append(value: "Cat")
 singleLinked.append(value: "Bird")
 
 
 print(singleLinked.description)
 singleLinked.remove(node: singleLinked.node(at: 1)!)
 print(singleLinked.description)
