//
//  CategoryModel.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import Foundation
import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var categoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "choco", title: "Choco"),
    CategoryModel(icon: "candy", title: "Candy"),
    CategoryModel(icon: "waffle", title: "Wafle")
]

