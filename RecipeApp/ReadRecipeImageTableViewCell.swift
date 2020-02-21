//
//  ReadRecipeImageTableViewCell.swift
//  RecipeApp
//
//  Created by Canderen Kaymak on 21.02.2020.
//  Copyright © 2020 Canderen Kaymak. All rights reserved.
//

import UIKit

class ReadRecipeImageTableViewCell: UITableViewCell {
   
    
    @IBOutlet weak var recipeImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
