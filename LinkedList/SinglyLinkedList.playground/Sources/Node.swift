//
//  Node.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/22/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

public final class Node<T>: Nodable {
    public var value: T
    public var next: Node<T>?
    
    public required init(_ value: T) {
        self.value = value
    }
}


