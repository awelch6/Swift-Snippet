//
//  ArrayExtensions.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/17/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

// MARK: Remove duplicate, Hashable, elements from an array

extension Array where Element: Hashable {
    
    /// Removes all duplicated elements in an array and returns all unique values
    public func removeDuplicates() -> [Element] {
        var tempDict = [Element: Bool]()
        
        return filter { tempDict.updateValue(true, forKey: $0) == nil }
    }
    
    /// Removed all duplicate elements, in place, from the current array
    public mutating func removeDuplicates() {
        self = self.removeDuplicates()
    }
}

// MARK: Remove duplicate, Equatable, elements from an array

extension Array where Element: Equatable {
    /// Removes all duplicated elements in an array and returns unique values using a for loop and the contains(_:) function
    public func removeDuplicates() -> [Element] {
        var result = [Element]()
        
        forEach {
            if !result.contains($0) {
                result.append($0)
            }
        }
        
        return result
    }
    /// Removes all duplicated elements, in place, and returns unique values using a for loop and the contains(_:) function
    public mutating func removeDuplicates() {
        var result = [Element]()
        
        forEach {
            if !result.contains($0) {
                result.append($0)
            }
        }
        
        self = result
    }
}
