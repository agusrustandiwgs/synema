//
//  BaseVC.swift
//  synema
//
//  Created by syndromme on 21/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit
import SVProgressHUD

class BaseVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
  
  //  MARK: Setup
  private func setupNotificationObserver() {
    NotificationCenter.default.addObserver(self, selector: #selector(onError(_:)), name: NSNotification.Name(rawValue: "error"), object: nil)
  }
  
  //  MARK: Action
  @IBAction func onError(_ notification: NSNotification) {
    hideLoading()
    if let message = notification.userInfo?[Constant.errorKey] as? String {
      let title: String = "Error"//.localized()
      self.showAlert(title: title, message: message) { _ in
        self.displayError()
      }
    }
  }
  
  //  MARK: Custom
  func hideLoading() {
    SVProgressHUD.dismiss()
  }
  
  func displayError() {
    
  }
  
  func openURL(url: URL) {
    UIApplication.shared.open(url)
  }
}
