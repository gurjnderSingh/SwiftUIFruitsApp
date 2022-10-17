//
//  OnBoardingView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 17/10/22.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: -  PROPERTIES
    
    //MARK: -  BODY
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }//: LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
