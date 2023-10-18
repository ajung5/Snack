//
//  CartPaymentView.swift
//  Snack
//
//  Created by Agung Nawawi on 18/10/23.
//

import SwiftUI

struct CartPaymentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Delivery Amount")
                
                Spacer()
                
                Text("Rp. 24355")
                    .font(.system(size: 24, weight: .semibold))
            }
            
            Divider()
            
            Text("Total Amount")
                .font(.system(size: 24))
            
            Text("Rp. 152000")
                .font(.system(size: 36, weight: .semibold))
        }
        .padding(30)
        .frame(maxWidth: .infinity)
        .background(.yellow.opacity(0.5))
        .clipShape(.rect(cornerRadius: 30))
        .padding()
        
        // Button
        Button(action: {
            
        }, label: {
            Text("Make Payment")
                .frame(maxWidth: .infinity)
                .frame(height: 80)
                .background(.yellow.opacity(0.5))
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.black)
                .clipShape(Capsule())
                .padding()
        })
    }
}

#Preview {
    CartPaymentView()
}
