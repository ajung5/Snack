//
//  ProductCard.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct ProductCard: View {
    
    var product: Product
    
    var body: some View {
        ZStack {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .padding(.trailing, 50)
                .rotationEffect(Angle(degrees: 30))
            
            ZStack {
                VStack(alignment: .leading, content: {
                    Text(product.name)
                        .font(.system(size: 30, weight: .semibold))
                    
                    Text(product.category)
                        .font(.callout)
                        .padding()
                        .background(
                            .white.opacity(0.5)
                        )
                        .clipShape(Capsule())
                    
                    Spacer()
                    
                    HStack {
                        Text(String(format: "Rp. %.0f", product.price))
                            .font(.system(size: 24, weight: .semibold))
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "basket")
                                .imageScale(.large)
                                .frame(width: 90, height: 68)
                                .background(.black)
                                .clipShape(Capsule())
                                .foregroundStyle(.white)
                        }

                    }
                    .padding(.leading)
                    .frame(maxWidth: .infinity)
                    .frame(height: 80)
                    .background(.white.opacity(0.5))
                    .clipShape(Capsule())
                })
            }
            .padding(30)
            .frame(width: 336, height: 422)
            .background(product.color.opacity(0.1))
            .clipShape(.rect(cornerRadius: 57))
            .padding(.leading, 20)
            .clipped()
        }
    }
}

#Preview {
    ProductCard(product: productList[0])
}
