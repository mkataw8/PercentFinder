//
//  CustomCell.swift
//  PercentFinder
//
//  Created by Muhamad Kataw on 5/4/22.
//

import UIKit

class CustomCell: UITableViewCell {
  @IBOutlet weak var img: UIImageView!
  @IBOutlet weak var tips: UITextView!

  override func awakeFromNib() {
    super.awakeFromNib()
    // Initialization code
  }

  override func setSelected(_ selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)

    // Configure the view for the selected state
  }

}


