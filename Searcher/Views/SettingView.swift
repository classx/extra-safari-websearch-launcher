//
//  SettingView.swift
//  Searcher
//
//  Created by Alexey Nikandrov on 05/05/2023.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        TabView {
            GeneralSettingsView()
                .tabItem {
                    Label("General", systemImage: "network")
                }
            SearchEnginesSettingsView()
                .tabItem {
                    Label("Engines", systemImage: "list.dash")
                }
        }
        .frame(width: 450, height: 250)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
