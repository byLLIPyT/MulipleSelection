//
//  ViewModelItem.swift
//  MulipleSelection
//
//  Created by Александр Уткин on 18/11/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import Foundation

class ViewModelItem {
    
    private var item: Model
    
    
    var isSelected = false
    var title: String {
        return item.title
    }
    
    init(item: Model) {
        self.item = item
    }
}
