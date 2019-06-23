//
//  Archiver.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/15/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

public class DataStore: Archiver {
    
    public let userDefaults: UserDefaults
    
    required public init(userDefaults: UserDefaults = UserDefaults.standard) {
        self.userDefaults = userDefaults
    }
    
    public func archive<T: Archivable>(by key: String, object: T) -> Error? {
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: object, requiringSecureCoding: false)
            userDefaults.set(data, forKey: key)
            return nil
        } catch let error {
            print(error.localizedDescription)
            return error
        }
    }
    
    public func getArchive<T: Archivable>(by key: String) -> T? {
        guard let data = userDefaults.data(forKey: key) else {
            return nil
        }
        do {
            return try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? T
        } catch let error {
            print(error.localizedDescription)
            return nil
        }
    }
    
    public func unarchive(by key: String) {
        userDefaults.removeObject(forKey: key)
    }
}


