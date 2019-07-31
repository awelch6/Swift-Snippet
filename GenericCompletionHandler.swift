//
//  GenericCompletionHandler.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

// MARK: A generic completion handler to allow for completion types to be defined at the call site.

public struct Completion<T> {
    
    public let completion: (T?) -> Void
    
    init(_ completion: @escaping (T?) -> Void) {
        self.completion = completion
    }
}
