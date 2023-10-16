//
//  CategoryView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct CategoryView: View {
    
    @Environment(\.isPresented) var mode
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    // Header
                    HStack {
                        Text("Order From The Best OF **Snacks**")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Image(systemName: "arrow.left")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .overlay {
                                    RoundedRectangle(cornerRadius: 50)
                                        .stroke()
                                        .opacity(0.4)
                                }
                        })
                        .foregroundStyle(.black)
                    }
                    .padding(30)
                    
                    LazyVGrid(columns:
                                [GridItem(.flexible()),
                                 GridItem(.flexible())],
                              content: {
                                ForEach(productList, id: \.id) { item in
                                    ProductCardSmall(product: item)
                        }
                    })
                    .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    CategoryView()
}
