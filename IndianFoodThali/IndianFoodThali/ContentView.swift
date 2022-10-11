//
//  ContentView.swift
//  IndianFoodThali
//
//  Created by zoya me on 10/11/22.
//

import SwiftUI

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}

var productList = [
    Product(name: "Biryani", image: "biryani", price: 350),
    Product(name: "Carry", image: "carry", price: 100),
    Product(name: "Fish", image: "fish", price: 250),
    Product(name: "Juice", image: "juice", price: 100),
    Product(name: "Milk Shake", image: "milkshake", price: 150),
    Product(name: "Veg Rice", image: "rice", price: 80),
    Product(name: "Daal", image: "daal", price: 150),
    Product(name: "Samosa", image: "samosa", price: 120),
    Product(name: "Chowmin", image: "chowmin", price: 350),
    Product(name: "Thali", image: "thali", price: 110),
    Product(name: "Rassgula", image: "rassgula", price: 89)
    
]



struct ContentView: View {
    
    @StateObject var kartManager = KartManager()
    @State var isPresented: Bool = false
    
    init() {
        let navigation = UINavigationBar.appearance()
        
        navigation.largeTitleTextAttributes = [.foregroundColor: UIColor.white, .backgroundColor: UIColor.red]
        
        navigation.titleTextAttributes = [.foregroundColor: UIColor.black]
        
        navigation.tintColor = UIColor.green
       
    }
    
    var body: some View {
        NavigationView {
            
            VStack {
                ZStack {
                    Color.black
                        .ignoresSafeArea(.all)
                    ScrollView {
                        ForEach(productList, id: \.id) { item in
                            ProductCard(product: item)
                                .environmentObject(kartManager)
                            
                        }
                        .toolbar {
                            NavigationLink {
                                KartView()
                                    .environmentObject(kartManager)
                                
                            }label: {
                                KartButton(numberOfProucts: kartManager.products.count)
                            }
                        }
                    }
                    .navigationTitle(Text("Indian Food"))
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(KartManager())
    }
}
