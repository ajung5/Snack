//
//  ProductModel.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import Foundation
import SwiftUI

// Product Model

struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var price: Double
    var imageName: String
    var color: Color
    
//    private var imageName: String
//    var image: Image {
//        Image(imageName)
//    }
}

// sample product
var productList = [
    Product(
      name: "Chocolate Chip Cookies",
      category: "Choco",
      price: 5.99,
      imageName: "chocolate-chip-cookies",
      color: .pink
    ),
    Product(
      name: "Peanut Butter Cookies",
      category: "Choco",
      price: 4.99,
      imageName: "peanut-butter-cookies.jpg",
      color: .pink
    ),
    Product(
      name: "Oatmeal Raisin Cookies",
      category: "Choco",
      price: 3.99,
      imageName: "oatmeal-raisin-cookies.jpg",
      color: .pink
    ),
    Product(
      name: "Snickerdoodles",
      category: "Choco",
      price: 2.99,
      imageName: "snickerdoodles.jpg",
      color: .pink
    ),
    Product(
      name: "Chocolate Milkshake",
      category: "Choco",
      price: 4.99,
      imageName: "chocolate-milkshake.jpg",
      color: .pink
    ),
    Product(
      name: "Tortilla",
      category: "Chips",
      price: 1.99,
      imageName: "tortilla-chips.jpg",
      color: .pink
    ),
    Product(
      name: "Corn Chips",
      category: "Chips",
      price: 1.99,
      imageName: "corn-chips.jpg",
      color: .pink
    ),
    Product(
      name: "Cheetos",
      category: "Chips",
      price: 1.99,
      imageName: "cheetos.jpg",
      color: .pink
    ),
    Product(
      name: "Doritos",
      category: "Chips",
      price: 1.99,
      imageName: "doritos.jpg",
      color: .pink
    ),
    Product(
      name: "Lays",
      category: "Chips",
      price: 1.99,
      imageName: "lays.jpg",
      color: .pink
    ),
    Product(
      name: "Ruffles",
      category: "Chips",
      price: 1.99,
      imageName: "ruffles.jpg",
      color: .pink
    ),
    Product(
      name: "Pringles",
      category: "Chips",
      price: 1.99,
      imageName: "pringles.jpg",
      color: .pink
    ),
    Product(
      name: "Salt & Vinegar",
      category: "Chips",
      price: 1.99,
      imageName: "salt-and-vinegar-chips.jpg",
      color: .pink
    ),
    Product(
      name: "Barbecue",
      category: "Chips",
      price: 1.99,
      imageName: "barbecue-chips.jpg",
      color: .pink
    )
]
