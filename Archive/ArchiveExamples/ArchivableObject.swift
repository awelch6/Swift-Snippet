//
//  ArchivableObject.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import Foundation

public class Coordinate: NSObject, Archivable {
    let latitude: Double
    let longitude: Double
    
    public required init?(coder aDecoder: NSCoder) {
        guard let latitude = aDecoder.decodeObject(for: .latitude) as? Double,
            let longitude = aDecoder.decodeObject(for: .longitude) as? Double else {
                return nil
        }
        self.latitude = latitude
        self.longitude = longitude
    }
    
    public func encode(with aCoder: NSCoder) {
        aCoder.encode(latitude, for: .latitude)
        aCoder.encode(longitude, for: .longitude)
    }
}

// MARK: Convience functions to allow for typed codingKeys.

private extension NSCoder {
    enum CoderKey: String {
        case latitude = "latitude"
        case longitude = "longitude"
    }
    
    func encode(_ object: Any?, for coderKey: CoderKey) {
        encode(object, forKey: coderKey.rawValue)
    }
    
    func decodeObject(for coderKey: CoderKey) -> Any? {
        return decodeObject(forKey: coderKey.rawValue)
    }
}
