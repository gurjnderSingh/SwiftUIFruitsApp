//
//  StartButtonView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 17/10/22.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button {
            print("Exit Onboarding Process")
        } label: {
            HStack {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
//            .background(.red)
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
        StartButtonView().previewLayout(.sizeThatFits)
    }
}
