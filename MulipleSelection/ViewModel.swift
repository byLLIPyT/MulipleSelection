//
//  ViewModel.swift
//  MulipleSelection
//
//  Created by Александр Уткин on 18/11/2019.
//  Copyright © 2019 Александр Уткин. All rights reserved.
//

import Foundation
import UIKit

class ViewModel: NSObject {
    
    var items = [ViewModelItem]()
    
    let dataArray = [
        Model(title: "Green"),
        Model(title: "Blue"),
        Model(title: "Black"),
        Model(title: "Grey"),
        Model(title: "Brown"),
        Model(title: "Yellow"),
        Model(title: "White"),
        Model(title: "Orange"),
        Model(title: "Purple"),
        Model(title: "Pink"),
        Model(title: "Golden"),
        Model(title: "Coral"),
        Model(title: "Olive"),
        Model(title: "Silver"),
        Model(title: "Khaki"),
        Model(title: "Emerald")
    ]
    override init() {
        items = dataArray.map { ViewModelItem(item: $0) }
    }
    
    var selectedItems: [ViewModelItem] {
        return items.filter { return $0.isSelected }
    }
}

extension ViewModel: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = true
    }
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        items[indexPath.row].isSelected = false
    }
}

extension ViewModel: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? CustomCell {
            cell.item = items[indexPath.row]
            
            if items[indexPath.row].isSelected {
                tableView.selectRow(at: indexPath, animated: true, scrollPosition: .none)
            } else {
                tableView.deselectRow(at: indexPath, animated: true)
            }
            return cell
        }
        return UITableViewCell()
    }
}
