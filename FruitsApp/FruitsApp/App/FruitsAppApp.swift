//
//  FruitsAppApp.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 13/10/22.
//

import SwiftUI

@main
struct FruitsAppApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView(fruits: fruitData)
            } else {
                ContentView()
            }
            
        }
    }
}
