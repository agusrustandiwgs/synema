//
//  MovieCollectionCell.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieCollectionCell: UICollectionViewCell {
  
  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var movieLabel: UILabel!
  
  let yOffsetSpeed: CGFloat = 100.0
  let xOffsetSpeed: CGFloat = 100.0
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  //  MARK: Custom
  var imageHeight: CGFloat {
    return (backgroundImage?.image?.size.height) ?? 0.0
  }
  
  var imageWidth: CGFloat {
    return (backgroundImage?.image?.size.width) ?? 0.0
  }
  
  func offset(_ offset: CGPoint = .zero) {
    backgroundImage.frame = backgroundImage.bounds.offsetBy(dx: offset.x, dy: offset.y)
  }
  
  var imageURL: URL? {
    didSet {
      if  !(self.imageURL?.absoluteString.isEmpty)! {
        backgroundImage.af_setImage(withURL: self.imageURL!,
                                    placeholderImage: UIImage(named: "placeholderImage"))
      }
    }
  }
}
