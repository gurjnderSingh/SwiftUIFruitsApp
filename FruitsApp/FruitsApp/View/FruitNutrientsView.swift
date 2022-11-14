//
//  FruitNutrientsView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 14/11/22.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK: - Properties
    
    var fruit: Fruit
    var nutrients = ["Energy","Sugar","Fat","Protein","Vitamins","Mineral"]
    
    //MARK: - Body
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrients value per 100g") {
                ForEach(0..<nutrients.count,id: \.self) { item in
                    Divider().padding(.vertical,5)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitData[1])
            .previewLayout(.fixed(width: 375, height: 300))
    }
}
