//
//  PlayerViewCell.swift
//  RatingDemo
//
//  Created by Macbook Pro MD102 on 5/14/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit

class PlayerViewCell: UITableViewCell {

    
    @IBOutlet weak var nameLabel:UILabel!
    @IBOutlet weak var gameLabel:UILabel!
    @IBOutlet weak var rattingImageView:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
