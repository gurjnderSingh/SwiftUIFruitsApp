//
//  SourceLinkView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 08/11/22.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        //GroupBox("Links", content: {
        VStack(spacing: 10) {
            GroupBox() {
                HStack {
                    Text("Content")
                    Spacer()
                    Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
                    Image(systemName: "arrow.up.right.square")
                }
                .font(.footnote)
            }
//            Link("Wikipedia", destination: URL(string: "https://www.wikipedia.com")!)
        }
        //)
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
