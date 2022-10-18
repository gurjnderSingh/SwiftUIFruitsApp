//
//  FruitModel.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 18/10/22.
//

import SwiftUI

struct Fruit: Identifiable {
    var id = UUID()
    var title, headline, image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
