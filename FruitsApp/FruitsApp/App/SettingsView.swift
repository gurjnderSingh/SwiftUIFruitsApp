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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 20) {
                    
                    //MARK: - Section I
                    GroupBox {
                        //  SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                        Divider().padding(.vertical,5)
                        HStack(alignment: .center,spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(10)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol.")
                        }
                    }
                label: {
                    SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                }
                    
                    //MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        Text("If your wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 50)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    } label: {
                        SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    }

                    //MARK: - SECTION 3
                    GroupBox {
                        SettingRowView(name: "Developer", content: "Gurjinder Singh")
                        SettingRowView(name: "Designer", content: "Ashish Kumar")
                        SettingRowView(name: "Compatibility", content: "iOS 15")
                        SettingRowView(name: "Website", linkLabel: "Swift UI MasterClass", linkDescription: "swiftuimasterclass.com")
                        SettingRowView(name: "Twitter", linkLabel: "@Gurjinderssingh", linkDescription: "twitter.com/Gurjinderssingh")
                        SettingRowView(name: "SwiftUI", content: "3.0")
                        SettingRowView(name: "Version", content: "1.1.0")
                    } label: {
                        SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    }

                    
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
