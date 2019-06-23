//
//  Archiver.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/15/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import Foundation

/// Archiver is responsible for archiving, unarchiving, and retrieving archived objects.
public protocol Archiver: class {
    /// Ensures that any class that confirms to 'Archiver' will have an instance of UserDefaults to store archived objects.
    var userDefaults: UserDefaults { get }
    
    /// Attempts to archive an 'Archivable' object and then store it in userDefaults. Returns an error if one occurs, returns nil otherwise.
    func archive<T: Archivable>(by key: String, object: T) -> Error?
    
    /// Removes an object for a given key.
    func unarchive(by key: String)
    
    /// retrieves an archive from userDefaults and casts it to the provided type. returns nil if there is no object, or the cast fails.
    func getArchive<T: Archivable>(by key: String) -> T?
    
    init(userDefaults: UserDefaults)
}
