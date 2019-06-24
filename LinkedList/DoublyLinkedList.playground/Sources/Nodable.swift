//
//  Nodable.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/22/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

public protocol Nodable: class {
    associatedtype T
    
    var value: T { get }
    var next: Self? { get set }
    var previous: Self? { get set }
    
    init(_ value: T)
}
