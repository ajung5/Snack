//
//  CategoryListView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct CategoryListView: View {
    
    // category view properties
    @State var selectedCategory = ""
    
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                ForEach(categoryList, id: \.id) { item in
                    Button {
                        selectedCategory = item.title
                    } label: {
                        HStack {
                            Image(item.icon)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CategoryListView()
}
