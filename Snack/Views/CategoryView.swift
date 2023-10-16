//
//  CategoryView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct CategoryView: View {
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
                        
                        Image(systemName: "arrow.left")
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
            }
        }
    }
}

#Preview {
    CategoryView()
}
