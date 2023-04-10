//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Nileshkumar M. Prajapati on 04/08/22.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - PROPERTIES
    var title: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(title).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if linkLabel != nil && linkDestination != nil {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(title: "Developer",
                            content: "Nileshkumar Prajapati")
            .preferredColorScheme(.dark)
                .previewLayout(.sizeThatFits)
            .padding()
            
            SettingsRowView(title: "Website", content: "Blog", linkLabel: "Blog Link", linkDestination: "https://iphoneappcode.blogspot.com")
            .previewLayout(.sizeThatFits)
            .padding()
        }
    }
}
