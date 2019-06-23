//
//  ViewControllerExtensions.swift
//  Swift-Snippets
//
//  Created by Austin Welch on 6/16/19.
//  Copyright © 2019 Austin Welch. All rights reserved.
//

import UIKit

extension UIViewController {
    /// Convience function for adding viewController as a child to a parent viewController
    public func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
    
    /// Convience function for removing a child viewController from parent. Call this function on behalf of the child.
    public func remove(_ child: UIViewController) {
        // Check that the parent exists before trying to remove any children
        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
    
    /// Adds a tapGesture to a viewController's view that when tapped will end editing on the view which will dismiss the keyboard.
    public func hideKeyboardWhenViewIsTapped() {
        let tapGesture = UITapGestureRecognizer()
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc private func hideKeyboard() {
        view.endEditing(true)
    }
}
