//
//  Linkable.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/22/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

public protocol Linkable: class {
    
    associatedtype T
    
    /// Returns a reference to the first node in the linked list.
    var head: Node<T>? { get set }
    
    /// Returns a node at a given index. Returns nil if the index is out of bounds.
    func node(at index: Int) -> Node<T>?
    
    /// Adds a node to the end of the linked list.
    func append(value: T)
    
    /// Removed a given node from the linked list if it exists. Otherwise, returns.
    func remove(node: Node<T>)
    
}
