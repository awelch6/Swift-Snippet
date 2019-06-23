//
//  BundleExtensions.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import Foundation

extension Bundle {
    ///returns the current release version number specified in bundle's info.plist file.
    public var releaseVersionNumber: String? {
        return infoDictionary?["CFBundleShortVersionString"] as? String
    }
    
    ///returns the current build version number specified in bundle's info.plist file.
    public var buildVersionNumber: String? {
        return infoDictionary?["CFBundleVersion"] as? String
    }
}
