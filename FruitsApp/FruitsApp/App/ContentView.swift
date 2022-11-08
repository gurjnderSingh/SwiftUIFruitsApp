//
//  ContentView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERITES
    
    var fruits: [Fruit] = fruitData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRowView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
