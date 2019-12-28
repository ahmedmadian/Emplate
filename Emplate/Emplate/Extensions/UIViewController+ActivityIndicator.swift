//
//  UIViewController+ActivityIndicator.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/27/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import UIKit

fileprivate var activityIndicator: UIActivityIndicatorView?

extension UIViewController {
    func showActivityIndicator () {
        activityIndicator = UIActivityIndicatorView(style: .medium)
        self.view.addSubview(activityIndicator ?? UIActivityIndicatorView())
        activityIndicator?.startAnimating()
        self.placeAtTheCenterWithView(view: activityIndicator!)
    }
    
    func removeActivityIndicator () {
        activityIndicator?.removeFromSuperview()
        activityIndicator = nil
    }
    
    private func placeAtTheCenterWithView(view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addConstraint(NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1.0, constant: 0))
        
        self.view.addConstraint(NSLayoutConstraint(item: view, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self.view, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1.0, constant: 0))
    }
    
}
