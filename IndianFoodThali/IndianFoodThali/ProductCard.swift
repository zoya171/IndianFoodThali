//
//  ProductCard.swift
//  IndianFoodThali
//
//  Created by mark me on 10/11/22.
//

import SwiftUI

struct ProductCard: View {
    
    @EnvironmentObject var cartManager: KartManager
    var product: Product
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(product.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width - 20)
                    .frame(height: 250)
                    .cornerRadius(10)
                    
                    
                    
                
                HStack(alignment: .center) {
                    Text(product.name)
                        .font(.system(size: 25, weight: .medium, design: .monospaced))
                        .fontWeight(.bold)
                    Spacer()
                    Text("₹ \(product.price)")
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .foregroundColor(Color.pink)
                    
                }
                .padding()
                .frame(maxWidth: .infinity)
                .frame(height: 45, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(10)
                
                
            
            
            }
            .frame(width: UIScreen.main.bounds.width - 20)
        .shadow(radius: 2)
        Button {
            cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus")
                    .padding()
                    .foregroundColor(Color.white)
                    .background(Color.purple)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct RowLine_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: productList[3])
            .environmentObject(KartManager())
    }
}
