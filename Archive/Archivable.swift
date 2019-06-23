//
//  Archivable.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/15/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import Foundation

public typealias Archive = NSObject & NSCoding & Codable

/// Conforming to this protocol will ensure that a given object is able to be archived by an 'Archiver'
public protocol Archivable: Archive { }

var test = 1 == 1
