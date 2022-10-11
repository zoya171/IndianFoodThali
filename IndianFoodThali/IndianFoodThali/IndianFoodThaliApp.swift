//
//  IndianFoodThaliApp.swift
//  IndianFoodThali
//
//  Created by mark me on 10/11/22.
//

import SwiftUI

@main
struct IndianFoodThaliApp: App {
    
    @StateObject var kartManager = KartManager()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(kartManager)
        }
    }
}
