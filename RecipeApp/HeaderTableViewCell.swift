//
//  HeaderTableViewCell.swift
//  RecipeApp
//
//  Created by Canderen Kaymak on 21.02.2020.
//  Copyright © 2020 Canderen Kaymak. All rights reserved.
//

import UIKit

class HeaderTableViewCell: UITableViewCell {
    
    //MARK: - IBOutlets
    @IBOutlet weak var headerTxt: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
