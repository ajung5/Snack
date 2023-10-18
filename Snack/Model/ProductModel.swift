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
    // choco
    Product(
      name: "Cadbury",
      category: "Choco",
      price: 25990,
      imageName: "cadbury",
      color: .blue
    ),
    Product(
      name: "Silverqueen",
      category: "Choco",
      price: 20450,
      imageName: "silverqueen_matcha",
      color: .orange
    ),
    Product(
      name: "Beng Beng",
      category: "Choco",
      price: 3200,
      imageName: "bengbeng",
      color: .red
    ),
    
    // chips
    Product(
      name: "Pringles",
      category: "Chips",
      price: 15990,
      imageName: "pringles",
      color: .brown
    ),
    Product(
      name: "Chitato",
      category: "Chips",
      price: 7500,
      imageName: "chitato",
      color: .yellow
    ),
    Product(
      name: "Qtela",
      category: "Chips",
      price: 6400,
      imageName: "qtela",
      color: .green
    ),
    
    // candy
    Product(
      name: "Relaxa",
      category: "Candy",
      price: 5600,
      imageName: "relaxa",
      color: .teal
    ),
    Product(
      name: "Mentos",
      category: "Candy",
      price: 6200,
      imageName: "mentos",
      color: .blue
    ),
    Product(
      name: "M&M's",
      category: "Candy",
      price: 8500,
      imageName: "mnm",
      color: .brown
    ),
    
    // Cookies
    Product(
      name: "Good Time",
      category: "Cookies",
      price: 5500,
      imageName: "chocolate-chip-cookies",
      color: .teal
    ),
    Product(
      name: "Roma",
      category: "Cookies",
      price: 3500,
      imageName: "roma",
      color: .blue
    ),
    Product(
      name: "Selamat",
      category: "Cookies",
      price: 5000,
      imageName: "selamat",
      color: .brown
    ),
    Product(
      name: "Nabati",
      category: "Cookies",
      price: 3500,
      imageName: "nabati",
      color: .yellow
    ),
]
