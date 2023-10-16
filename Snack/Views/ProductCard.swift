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
            })
        }
        .padding()
        .frame(width: 336, height: 422)
        .background(product.color.opacity(0.2))
        .clipShape(.rect(cornerRadius: 57))
        .padding(.leading, 20)
    }
}

#Preview {
    ProductCard(product: productList[0])
}
