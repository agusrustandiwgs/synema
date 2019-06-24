//
//  String+Extension.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation

extension String {
  func stringToDate(format: String) -> Date {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = format
    return dateFormatter.date(from: self)!
  }
}
