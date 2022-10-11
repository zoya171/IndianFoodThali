//
//  ImageDetails.swift
//  IndianFoodThali
//
//  Created by mark me on 10/11/22.
//

import SwiftUI

struct ImageDetails: View {
    
    @EnvironmentObject var cartManager: KartManager
    var food: Product
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                self.presentationMode.wrappedValue.dismiss()
                
            } label: {
                 Text("X")
            }.buttonStyle(.bordered)
                .foregroundColor(Color.red)
                .padding(.trailing, 10)
            
            VStack {
                GeometryReader { geo in
                    Image(food.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 1.0)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .padding(.top, 10)
                    
                    
                    
                }
                Button {
                    
                } label: {
                    Text("Place Order")
                }.buttonStyle(.borderedProminent)
                    .tint(Color.mint)

               
                
            }.navigationBarHidden(true)
        }
    }
}

struct ImageDetails_Previews: PreviewProvider {
    static var previews: some View {
        ImageDetails(food: productList[3])
        
    }
}
