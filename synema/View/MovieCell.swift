//
//  MovieCell.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {
  
  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var movieLabel: UILabel!
  
  var imageURL: URL? {
    didSet {
      if  !(self.imageURL?.absoluteString.isEmpty)! {
        backgroundImage.af_setImage(withURL: self.imageURL!,
                                    placeholderImage: UIImage(named: "placeholderImage"))
      }
    }
  }
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
}
