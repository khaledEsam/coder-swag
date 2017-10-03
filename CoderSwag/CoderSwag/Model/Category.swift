//
//  Category.swift
//  CoderSwag
//
//  Created by Khaled Esam on 10/3/17.
//  Copyright © 2017 Khaled Esam. All rights reserved.
//

import Foundation

struct Category {
    
    private(set) public var tiltle: String
    private(set) public var imageName: String
    
    init(title: String, imageName: String){
        
        self.tiltle = title
        self.imageName = imageName
    }
}
