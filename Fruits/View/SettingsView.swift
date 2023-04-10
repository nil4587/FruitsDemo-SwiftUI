//
//  SettingsView.swift
//  Fruits
//
//  Created by Nileshkumar M. Prajapati on 04/08/22.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: - Section 1
                    GroupBox(label: SettingsLableView(labelText: "Fruit", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK: - Section 2
                    GroupBox(label: SettingsLableView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That wa it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
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
                        .background(
                            Color(.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    // MARK: - Section 3
                    GroupBox(label: SettingsLableView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                        SettingsRowView(title: "Developer", content: "Nileshkumar Prajapati")
                        SettingsRowView(title: "Compatibility", content: "iOS 15")
                        SettingsRowView(title: "Blog", linkLabel: "iPhone App Code Mine", linkDestination: "iphoneappcode.blogspot.com")
                        SettingsRowView(title: "Github", linkLabel: "github/nil4587", linkDestination: "github.com/nil4587")
                        SettingsRowView(title: "SwiftUI", content: "2.0")
                        SettingsRowView(title: "Version", content: "1.0")
                    }//: BOX
                }//: VStack
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .padding()
            }//: Scroll
        }//: Navigation
    }
}

// MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
