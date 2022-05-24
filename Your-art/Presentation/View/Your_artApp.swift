//
//  Your_artApp.swift
//  Your-art
//
//  Created by Анастасия Василевская on 1.03.22.
//

import SwiftUI

@main
struct Your_artApp: App {
    
    @State var tabIndex = 1
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.systemGray4
        }
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $tabIndex) {
                ProfileView()
                    .tabItem {
                        Label("Profile", systemImage: "person.circle")
                    }
                
                HomeView()
                    .tabItem {
                        Label("Home", systemImage: "house")
                    }
                    .tag(1)
                
                SettingsView()
                    .tabItem {
                        Label("Settings", systemImage: "slider.horizontal.3")
                    }
            }
        }
    }
}
