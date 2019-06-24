//
//  SegmentedCell.swift
//  synema
//
//  Created by syndromme on 24/06/19.
//  Copyright © 2019 syndromme. All rights reserved.
//

import UIKit

class SegmentedCell: UITableViewCell {
  
  @IBOutlet weak var segment: UISegmentedControl!
  
  var segmentTapped: (_ sender: TabSelection) -> Void = {_ in }
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  @IBAction func segmentAction(_ sender: Any) {
    switch segment.selectedSegmentIndex {
    case 2:
      segmentTapped(.Right)
    case 1:
      segmentTapped(.Middle)
    default:
      segmentTapped(.Left)
    }
  }
}
