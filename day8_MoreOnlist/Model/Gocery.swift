//
//  GroceryCategory.swift
//  MoreOnList
//
//  Created by Raghav Deo on 06/12/23.
//




import Foundation

struct GroceryCategory {
    let title: String
    let groceryItems: [GroceryItem]
}

extension GroceryCategory {
    
    static func all() -> [GroceryCategory] {
        
        return [GroceryCategory(title: "Bigbasket", groceryItems: [GroceryItem(title: "Milk", price: 45),GroceryItem(title: "Cookies", price: 50)]), GroceryCategory(title: "Kisan Konnect", groceryItems: [GroceryItem(title: "Onion", price: 60),GroceryItem(title: "Flower", price: 50)])]
        
    }
    
}

struct GroceryItem {
    let title: String
    let price: Double
}
