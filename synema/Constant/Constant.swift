//
//  Constant.swift
//  synema
//
//  Created by syndromme on 23/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import Foundation

class Constant: NSObject {
  public static let isDebug = true   // true - development / false - production

  public static let baseUrlDevelopment = "https://api.themoviedb.org/3/"
  public static let baseUrlProduction = "https://api.themoviedb.org/3/"
  public static let baseUrl = isDebug ? baseUrlDevelopment : baseUrlProduction
  public static let baseImageUrl = "https://image.tmdb.org/t/p/w440_and_h660_face"
  public static let baseYoutubeUrl = "https://www.youtube.com/watch?v="
  public static let baseYoutubeThumbnailUrl = "https://img.youtube.com/vi/%@/0.jpg"
  public static let baseIMDbUrl = "https://www.imdb.com/title/"
  
  public static let movieDBKey = "a3f36620b34dc130d23f4a5155576bb9"
  public static let movieDBAccessToken = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJhM2YzNjYyMGIzNGRjMTMwZDIzZjRhNTE1NTU3NmJiOSIsInN1YiI6IjVkMGM4ZDBlOTI1MTQxMzk0NWJhODExNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.nGRUIVvxHRZQTzqKxcp9pIefZBxBN9KjyJa8s_Zt9zI"
  
  public static let errorKey: String = "errorKey"
}

class ApiResponse {
  enum GetGenreResponse {
    case success(response: GenreList.APIModel.Response)
    case error(message: String)
  }
}
