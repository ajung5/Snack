//
//  CartView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct CartView: View {
    
    @Environment(\.isPresented) var mode
    
    var body: some View {
        NavigationView(content: {
            ScrollView {
                VStack {
                    HStack {
                        Text("Cart")
                            .font(.system(size: 30))
                            .padding(.trailing)
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }, label: {
                            Text("3")
                                .imageScale(.large)
                                .padding()
                                .frame(width: 70, height: 90)
                                .background(
                                    .yellow
                                        .opacity(0.5)
                                )
                                .clipShape(Capsule())
                        })
                        .foregroundStyle(.black)
                        
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
                    
                    // Cart Products
                    VStack {
                        ForEach(productList) { item in
                            CartProductCard(product: item)
                        }
                    }
                    .padding(.horizontal)
                    
                    // Card Total
                    
                    //
                }
            }
        })
    }
}

#Preview {
    CartView()
}
