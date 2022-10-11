//
//  ProductRow.swift
//  IndianFoodThali
//
//  Created by mark me on 10/11/22.
//

import SwiftUI

struct ProductRow: View {
    
    @EnvironmentObject var cartManager: KartManager
    var product: Product
    
    var body: some View {
        HStack(spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100)
                .cornerRadius(10)
            
            Text(product.name)
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
        
            
            Spacer()
            
            Image(systemName: "trash")
                .foregroundColor(Color.red)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                    
                }
            
            VStack(alignment: .leading, spacing: 10) {
                Text("₹ \(product.price)")
                    
                
            }
        
        
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct ProductList_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: productList[3])
    }
}

