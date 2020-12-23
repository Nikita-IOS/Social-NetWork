//
//  CustomTableViewCell.swift
//  Social Network
//
//  Created by Nikita Gras on 24.12.2020.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var groupLabel: UILabel!
    
    @IBOutlet weak var groupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
