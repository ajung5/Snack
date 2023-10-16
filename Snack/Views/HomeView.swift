//
//  HomeView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct HomeView: View {
   
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
            }
            .padding(30)
            
            // category List
            CategoryListView()
            
            // Collection View
            CollectionView()
            
            // Product List
            ProductListView()
            
        }
    }
}

#Preview {
    HomeView()
}
