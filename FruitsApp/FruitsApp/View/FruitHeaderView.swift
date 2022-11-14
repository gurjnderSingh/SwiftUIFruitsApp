//
//  FruitHeaderView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 08/11/22.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: -  PROPERTIES
    var fruit: Fruit
    @State var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient.init(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0), radius: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }//: ZSTACK
        .frame(height: 340)
        .onAppear {
            withAnimation(.easeOut(duration: 0.6)) {
                isAnimating = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
