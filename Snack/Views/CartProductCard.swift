//
//  CartProductCard.swift
//  Snack
//
//  Created by Agung Nawawi on 17/10/23.
//

import SwiftUI

struct CartProductCard: View {
    
    var product: Product
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(product.imageName)
                .resizable()
                .scaledToFit()
                .padding()
                .frame(width: 90, height: 90)
                .background(
                    .gray.opacity(0.1)
                )
            .clipShape(Circle())
            
            VStack(alignment: .leading, content: {
                Text(product.name)
                    .font(.headline)
                
                Text(product.category)
                    .font(.callout)
                    .opacity(0.5)
            })
            
            Spacer()
            
            Text(String(format: "Rp. %.0f", product.price))
                .padding()
                .background(.yellow.opacity(0.5))
                .clipShape(Capsule())
        }
    }
}

#Preview {
    CartProductCard(product: productList[1])
}
