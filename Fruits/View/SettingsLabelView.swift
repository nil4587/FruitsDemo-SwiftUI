//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Nileshkumar M. Prajapati on 04/08/22.
//

import SwiftUI

struct SettingsLableView: View {
    
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

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "Fruit",
                          labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
