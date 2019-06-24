//
//  Date+Extension.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation

extension Date {
  func dateToString(format: String) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.string(from: self)
  }
}
