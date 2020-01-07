//
//  SampleTableViewCell.swift
//  AutoLayoutConstraints_YP
//
//  Created by mallikarjun on 07/01/20.
//  Copyright © 2020 Mallikarjun H. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
