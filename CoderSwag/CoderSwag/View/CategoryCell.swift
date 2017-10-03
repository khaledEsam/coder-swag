//
//  CategoryCell.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/3/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage : UIImageView!
    @IBOutlet weak var categoryTitle : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateCategory(category: Category){
        
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.tiltle
    }

}
