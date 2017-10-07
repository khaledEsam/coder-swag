//
//  ProductCell.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/5/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import UIKit

class ProductCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage : UIImageView!
    @IBOutlet weak var productTitle : UILabel!
    @IBOutlet weak var productPrice : UILabel!
    
    
    func updateViews(product: Product){
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.title
        productPrice.text = product.price
    }
    
    
    
}
