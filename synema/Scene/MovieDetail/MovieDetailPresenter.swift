//
//  MovieDetailPresenter.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright (c) 2019 syndromme. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol MovieDetailPresentationLogic
{
  func presentMovie(response: Movie)
  func presentReview(response: [MovieReview])
  func presentTrailer(response: [MovieTrailer])
}

class MovieDetailPresenter: MovieDetailPresentationLogic
{
  weak var viewController: MovieDetailDisplayLogic?
  
  // MARK: Do something
  func presentMovie(response: Movie) {
    viewController?.displayMovie(result: response)
  }
  
  func presentReview(response: [MovieReview]) {
    viewController?.displayReview(result: response)
  }
  
  func presentTrailer(response: [MovieTrailer]) {
    viewController?.displayTrailer(result: response)
  }
}
