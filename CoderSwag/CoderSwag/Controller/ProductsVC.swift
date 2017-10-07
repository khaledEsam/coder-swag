//
//  ProductsVC.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/7/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    
    @IBOutlet weak var productsCollection: UICollectionView!
    
    private(set) public var Products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCollection.delegate = self
        productsCollection.dataSource = self
    }

    func initProducts(category: Category){
        
        Products = DataService.instance.getProducts(forCategoryTitle: category.tiltle)
        navigationItem.title = category.tiltle
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProcductCell", for: indexPath) as? ProductCell{
            let product = Products[indexPath.row]
            cell.updateViews(product: product)
            return cell
            
        }
        
        return ProductCell()
    }

    

}
