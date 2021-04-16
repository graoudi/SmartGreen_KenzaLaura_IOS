//
//  TableCellViewController.swift
//  SmartGreenIos
//
//  Created by kenza graoudi on 09/04/2021.
//

import UIKit

class TableCellViewController: UITableViewCell {

    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var text01Label: UILabel!
    
    @IBOutlet weak var imageCell: UIImageView!
    
    override func awakeFromNib() {
            super.awakeFromNib()
            // Initialization code
        }

        override func setSelected(_ selected: Bool, animated: Bool) {
            super.setSelected(selected, animated: animated)

            // Configure the view for the selected state
        }

}
