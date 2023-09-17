//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by 小野寺祥吾 on 2023/09/17.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var lebelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lebelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructus", lebelImage: "info.circle")
}
