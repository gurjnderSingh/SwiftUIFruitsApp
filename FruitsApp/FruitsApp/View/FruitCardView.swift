//
//  FruitCardView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 15/10/22.
//

import SwiftUI

struct FruitCardView: View {
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            VStack {
                //Fuit Image
                Spacer()
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 6, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                //Fruit Text
                Text("BlueBerry")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 10, x: 2, y: 2)
                //Fruit: Headline
                Text("BlueBerry are sweet, nutritious and wildly popular fruit all over the world")
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 10)
                    .frame(maxWidth: 350)
                
                Spacer()
                StartButtonView()
                    .padding(.bottom, 40)
                    
            }//: VStack
        }//: ZStack
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        })
        
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorLimeLight"), Color("ColorLimeDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 14)
        .padding(.vertical, 13)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
