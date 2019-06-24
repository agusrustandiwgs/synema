//
//  NetworkService.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Moya
import Result

let Provider = MoyaProvider<NetworkService>(plugins: [HandlingResponsePlugin(), NetworkLoggerPlugin(verbose: true)])

enum NetworkService {
  case genre
  case discover(request: Discover.APIModel.Request)
  case movieDetail(path: String)
  case movieReview(path: String, request: MovieDetail.APIModel.Request)
  case movieTrailer(path: String)
}

extension NetworkService: TargetType {
  
  public var baseURL: URL {
    return URL(string: Constant.baseUrl)!
  }
  
  public var path: String {
    return NetworkPath.createPath(self)
  }
  
  public var method: Moya.Method {
    switch self {
    case .genre, .discover, .movieDetail, .movieReview, .movieTrailer:
      return .get
    default:
      return .post
    }
  }
  
  public var sampleData: Data {
    return Data()
  }
  
  public var task: Task {
    return NetworkTask.createParams(self)
  }
  
  public var headers: [String : String]? {
    switch self {
    default:
      return ["Accept" : "application/json",
              "Content-Type" : "application/x-www-form-urlencoded"]
    }
  }
}


class HandlingResponsePlugin: PluginType {
  func process(_ result: Result<Response, MoyaError>, target: TargetType) -> Result<Response, MoyaError> {
    if let statusCode = try? result.get().statusCode {
      if statusCode != 200 {
        let errorDict = [Constant.errorKey : result.error?.errorDescription]
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "error"), object: nil, userInfo: errorDict as [AnyHashable : Any])
      }
      print("#statusCode \(statusCode)")
    }
    return result
  }
}
