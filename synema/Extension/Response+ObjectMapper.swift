//
//  Response+ObjectMapper.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation
import Moya
import ObjectMapper

public extension Response {
  
  /// Maps data received from the signal into an object which implements the Mappable protocol.
  /// If the conversion fails, the signal errors.
  public func mapObject<T: BaseMappable>(_ type: T.Type, context: MapContext? = nil) throws -> T {
    guard let object = Mapper<T>(context: context).map(JSONObject: try mapJSON()) else {
      throw MoyaError.jsonMapping(self)
    }
    return object
  }
  
  /// Maps data received from the signal into an array of objects which implement the Mappable
  /// protocol.
  /// If the conversion fails, the signal errors.
  public func mapArray<T: BaseMappable>(_ type: T.Type, context: MapContext? = nil) throws -> [T] {
    guard let array = try mapJSON() as? [[String : Any]] else {
      throw MoyaError.jsonMapping(self)
    }
    return Mapper<T>(context: context).mapArray(JSONArray: array)
  }
  
}


// MARK: - ImmutableMappable
public extension Response {
  
  /// Maps data received from the signal into an object which implements the ImmutableMappable
  /// protocol.
  /// If the conversion fails, the signal errors.
  public func mapObject<T: ImmutableMappable>(_ type: T.Type, context: MapContext? = nil) throws -> T {
    return try Mapper<T>(context: context).map(JSONObject: try mapJSON())
  }
  
  /// Maps data received from the signal into an array of objects which implement the ImmutableMappable
  /// protocol.
  /// If the conversion fails, the signal errors.
  public func mapArray<T: ImmutableMappable>(_ type: T.Type, context: MapContext? = nil) throws -> [T] {
    guard let array = try mapJSON() as? [[String : Any]] else {
      throw MoyaError.jsonMapping(self)
    }
    return try Mapper<T>(context: context).mapArray(JSONArray: array)
  }
  
}
