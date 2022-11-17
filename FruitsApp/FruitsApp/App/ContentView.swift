//
//  ContentView.swift
//  FruitsApp
//
//  Created by Gurjinder Singh on 13/10/22.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERITES
    @State var isShowingSetting: Bool = false
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
            .navigationBarTitle("Fruit", displayMode: .large)
            .navigationBarItems(trailing:
                                    Button(action: {
                isShowingSetting = true
            }, label: {
                Image(systemName: "slider.horizontal.3")
            }) //: Button
            )
            .sheet(isPresented: $isShowingSetting) {
                SettingsView()
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
