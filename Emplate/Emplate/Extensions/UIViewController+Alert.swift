//
//  UIViewController+Alert.swift
//  Emplate
//
//  Created by Ahmed Madian on 12/27/19.
//  Copyright © 2019 Ahmed Madian. All rights reserved.
//

import UIKit

extension UIViewController {
    func showAlert(title: String = "ERROR", message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true)
    }
}
