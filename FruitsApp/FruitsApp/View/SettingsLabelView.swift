//
//  SettingsLabelView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 15/11/22.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Properties
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
