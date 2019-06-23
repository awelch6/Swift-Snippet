//
//  NotifcationNameExtensions.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import Foundation

// MARK: Convience extension that allows notifications to be named in one place and reused throughout an application

extension Notification.Name {
    static let someNotificationName = Notification.Name(rawValue: "SomeNotificationName")
}
