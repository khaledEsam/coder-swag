//
//  DataService.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/3/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import Foundation

class DataService{
    
    static let instance = DataService()
    
    private let categories = [
        
        Category(title: "SHIRT", imageName: "shirts.png"),
        Category(title: "HOODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category]{
        
        return categories
    }
}
