//
//  TrailerThumbnailCell.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit

class TrailerThumbnailCell: UITableViewCell {
  
  @IBOutlet weak var thumbnailImage: UIImageView!
  @IBOutlet weak var playButton: UIButton!
  
  var playTapped: (_ sender: Any) -> Void = {_ in }
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  var imageURL: URL? {
    didSet {
      if  !(self.imageURL?.absoluteString.isEmpty)! {
        thumbnailImage.af_setImage(withURL: self.imageURL!,
                                   placeholderImage: UIImage(named: "placeholderImage"))
      }
    }
  }
  
  @IBAction func playAction(_ sender: Any) {
    playTapped(sender)
  }
}
