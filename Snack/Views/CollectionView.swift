//
//  CollectionView.swift
//  Snack
//
//  Created by Agung Nawawi on 16/10/23.
//

import SwiftUI

struct CollectionView: View {
    var body: some View {
        HStack {
            Text("Choco **Collections**")
                .font(.system(size: 24))
            
            Spacer()
            
            Image(systemName: "arrow.right")
                .imageScale(.large)
        }
        .padding(.horizontal, 30)
        .padding(.vertical, 15)
    }
}

#Preview {
    CollectionView()
}
