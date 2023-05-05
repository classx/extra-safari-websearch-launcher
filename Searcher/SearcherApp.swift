//
//  SearcherApp.swift
//  Searcher
//
//  Created by Alexey Nikandrov on 04/05/2023.
//

import SwiftUI

@main
struct SearcherApp: App {
    @Environment(\.openWindow) var openWindow
    var body: some Scene {
        MenuBarExtra("ExtraSearch", systemImage: "1.circle") {
            Button("Activate search") {
                //currentNumber = "3"
                openWindow(id: "ExtraSearchBarWindow")
            }.keyboardShortcut("3")
            Divider()
            Button("Perferences...") {
                NSApp.activate(ignoringOtherApps: true)
                NSApp.sendAction(Selector(("showSettingsWindow:")), to: nil, from: nil)
            }
            Divider()

            Button("Quit") {
                NSApplication.shared.terminate(nil)
            }.keyboardShortcut("q")

        } // END BarExtra
        Window("Search Bar", id: "ExtraSearchBarWindow") {
            EmptyView()
        }
        Settings{
            SettingView()
        }
    }
}


// maybe need
extension NSApplication {
    static func show(ignoringOtherApps: Bool = true) {
        NSApp.setActivationPolicy(.regular)
        NSApp.activate(ignoringOtherApps: ignoringOtherApps)
    }

    static func hide() {
        NSApp.hide(self)
        NSApp.setActivationPolicy(.accessory)
    }
}
