//
//  NetworkPath.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation

class NetworkPath {
  class func createPath(_ service: NetworkService) -> String {
    switch service {
    case .genre:
      return "genre/movie/list"
    case .discover:
      return "discover/movie"
    case .movieDetail(let path):
      return "movie/\(path)"
    case .movieReview(let path, let request):
      return "movie/\(path)/reviews"
    case .movieTrailer(let path):
      return "movie/\(path)/videos"
    }
  }
}
