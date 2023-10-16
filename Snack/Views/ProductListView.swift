//
//  ProductListView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct ProductListView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(productList, id: \.id) { item in
                    ProductCard(product: item)
                }
            }
        }
    }
}

#Preview {
    ProductListView()
}
