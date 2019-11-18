//
//  CustomCell.swift
//  MulipleSelection
//
//  Created by Александр Уткин on 18/11/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var titleLabel: UILabel!
    
    var item: ViewModelItem? {
        didSet {
            titleLabel?.text = item?.title
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none        
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        accessoryType = selected ? .checkmark : .none
        // Configure the view for the selected state
    }
    
}
