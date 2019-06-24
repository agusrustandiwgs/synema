//
//  AppValidator.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation

enum AppError: Swift.Error, LocalizedError {
  case genericError(message: String)
  case serverError
  case dataNotFound
  case dataAlreadyExists
  
  public var errorDescription: String? {
    get {
      switch self {
      case .serverError:
        return "ServerError"
      case .genericError(let message):
        return message
      case .dataNotFound:
        return "Data Not Found"
      case .dataAlreadyExists:
        return "Data Already Exists"
      }
    }
  }
}
