//
//  ContentView.swift
//  MultipleBuilds
//
//  Created by George Katsimardos on 9/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.colorScheme) var colorScheme
    let themeColors = ThemeColors.loadThemeColors()
    
    var body: some View {
        Text("Hello, world!")
            .padding()
            .foregroundColor(colorScheme == .dark ?
                             Color(hex:themeColors.darkPrimaryColor) :
                                Color(hex:themeColors.lightPrimaryColor))
            .onAppear {
                let appBuildNumber = Bundle.main.object(forInfoDictionaryKey: "BaseURL") as? String
                if let val = appBuildNumber {
                    print(val)
                } else {
                    print("No value")
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
