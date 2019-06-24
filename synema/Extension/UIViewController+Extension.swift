//
//  UIViewController+Extension.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit

extension UIViewController {
  func showAlert(title: String?, message: String, actions: ((UIAlertAction) -> Void)? = nil) {
    
    var localizedTitle: String? {
      if let title = title {
        return title
      } else {
        return nil
      }
    }
    
    let localizedMessage = message
    let localizedOk = "OK"
    
    let alert = UIAlertController(title: localizedTitle, message: localizedMessage, preferredStyle: .alert)
    let action = UIAlertAction(title: localizedOk, style: .default, handler: {  actions }())
    alert.addAction(action)
    
    self.showDetailViewController(alert, sender: nil)
  }
}
