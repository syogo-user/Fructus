//
//  SettingsView.swift
//  Fructus
//
//  Created by 小野寺祥吾 on 2023/09/17.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // SECTION1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", lebelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including patassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                            
                        }
                    }
                    // SECTION2
                    
                    // SECTION3
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                       
                
                .padding()
            } //: SCROLL
        }
    } //: NAVIGATION
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
