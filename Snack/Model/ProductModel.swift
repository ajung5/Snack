//
//  ProductModel.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import Foundation
import SwiftUI

// Product Model

struct ProductModel: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var imageName: String
    var price: Int
}
