//
//  NetworkTask.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Moya

class NetworkTask {
  class func createParams(_ service: NetworkService) -> Task {
    switch service {
    case .movieReview(let _, let request):
      return .requestParameters(parameters: request.toJSON(), encoding: URLEncoding.queryString)
    case .discover(let request):
      return .requestParameters(parameters: request.toJSON(), encoding: URLEncoding.queryString)
    default :
      return .requestParameters(parameters: ["api_key": Constant.movieDBKey],
                                encoding: URLEncoding.queryString)
    }
  }
}
