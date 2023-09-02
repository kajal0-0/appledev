//
//  CustomCell.swift
//  tableview0w0
//
//  Created by Kajal Pahil on 02/09/23.
//

import UIKit

class CustomCell: UITableViewCell {


    @IBOutlet weak var imgview: UIImageView!
    
    
    @IBOutlet weak var labell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
