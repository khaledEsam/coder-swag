//
//  ViewController.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/3/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
   
    @IBOutlet weak var categoryTable : UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        categoryTable.dataSource = self
        categoryTable.delegate = self
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return DataService.instance.getCategories().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            
            let category = DataService.instance.getCategories()[indexPath.row]
            
            cell.updateCategory(category: category)
            
            return cell
        }
        else {
            return CategoryCell()
        }
    }

    

}

