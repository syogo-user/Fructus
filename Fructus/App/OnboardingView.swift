//
//  OnboardingView.swift
//  Fructus
//
//  Created by 小野寺祥吾 on 2023/09/16.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:LOOP
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {
    OnboardingView(fruits: fruitsData)
}
