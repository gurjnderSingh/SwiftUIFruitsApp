//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 15/10/22.
//

import SwiftUI

struct FruitCardView: View {

    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        
        ZStack {
            VStack {
                //Fuit Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 6, x: 6, y: 8)
                //Fruit Text
                Text("BlueBerry")
                
                //Fruit: Headline
            }//: VStack
        }//: ZStack
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorLimeLight"), Color("ColorLimeDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
