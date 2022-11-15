//
//  SettingsView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 15/11/22.
//

import SwiftUI

struct SettingsView: View {
    
    //MARK: - Properties
    
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                } //: VStack
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(trailing:
                                    Button(action: {
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Image(systemName: "xmark")
            })
            )
            .padding()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
