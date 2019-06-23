//
//  UIViewExtensions.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import UIKit

extension UIView {
    /// Convience function that adds a new CAGradientLayer to the currentView. 
    public func applyGradient( colors: [UIColor], locations: [NSNumber]? = nil, startPoint: CGPoint, endPoint: CGPoint, cornerRadius: CGFloat = 0, name: String? = nil) {
        let gradient = CAGradientLayer()
        gradient.colors = colors.map { $0.cgColor }
        gradient.locations = locations
        gradient.startPoint = startPoint
        gradient.endPoint = endPoint
        gradient.frame = bounds
        gradient.cornerRadius = cornerRadius
        gradient.name = name
        
        layer.insertSublayer(gradient, at: 0)
    }
    
    /// Convienence function for adding a shadow layer to the current view.
    public func applyShadow(color: CGColor, opacity: Float, radius: CGFloat, offset: CGSize, name: String? = nil) {
        layer.shadowColor = color
        layer.shadowOpacity = opacity
        layer.shadowOffset = offset
        layer.shadowRadius = radius
        layer.name = name
    }
}
