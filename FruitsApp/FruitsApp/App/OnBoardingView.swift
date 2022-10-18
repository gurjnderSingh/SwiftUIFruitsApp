//
//  OnBoardingView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 17/10/22.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: -  PROPERTIES
    
    var fruits: [Fruit] = fruitData
    //MARK: -  BODY
    
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
//        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitData)
    }
}
