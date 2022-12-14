//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 17/10/22.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - PROPERTIES
    
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(.white, lineWidth: 1.25)
            )
        }
        .accentColor(.white)
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
