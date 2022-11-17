//
//  SettingRowView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 16/11/22.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: - Properties
    
    var name: String
    var content: String? = nil
    var linkLabel: String?  = nil
    var linkDescription: String? = nil
    
    //MARK: - Body
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 5)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!).fontWeight(.bold)
                } else if (linkLabel != nil && linkDescription != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDescription!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "Gurjinder Singh")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
