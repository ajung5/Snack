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
        HStack() {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(categoryList, id: \.id) { item in
                        Button {
                            selectedCategory = item.title
                        } label: {
                            HStack {
                                if item.title != "All" {
                                    Image(item.icon)
                                        .renderingMode(.template)
                                        .resizable()
                                        .frame(width: 30, height: 30)
                                        .foregroundStyle(
                                            selectedCategory == item.title ? .yellow : .black
                                        )
                                }
                                Text(item.title)
                                    .frame(height: 30)
                            }
                            .padding(20)
                            .background(
                                selectedCategory == item.title ? .black : .gray.opacity(0.1)
                            )
                            .foregroundStyle(selectedCategory != item.title ? .black : .white)
                            .clipShape(Capsule())
                            
                        }
                    }
                }
                .padding(.horizontal, 30)
            }
        }
    }
}

#Preview {
    CategoryListView()
}
