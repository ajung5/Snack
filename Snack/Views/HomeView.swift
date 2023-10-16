//
//  HomeView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct HomeView: View {
    
    // category view properties
    @State var selectedCategory = ""
    
    var body: some View {
        ScrollView {
            VStack {
                // Header
                HStack {
                    Text("Order From The Best OF **Snacks**")
                        .font(.system(size: 30))
                        .padding(.trailing)
                    
                    Spacer()
                    
                    Image(systemName: "line.3.horizontal")
                        .imageScale(.large)
                        .padding()
                        .frame(width: 70, height: 90)
                        .overlay {
                            RoundedRectangle(cornerRadius: 50)
                                .stroke()
                                .opacity(0.4)
                        }
                }
                
                // category List
                CategoryListView
                
            }
            .padding(30)
        }
    }
    
    // Category List View
    var CategoryListView: some View {
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
            }
        }
    }
}

#Preview {
    HomeView()
}
