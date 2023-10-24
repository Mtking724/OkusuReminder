//
//  OkusuReminderApp.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//

import SwiftUI

@main
struct OkusuReminderApp: App {
    var body: some Scene {
        WindowGroup {
            FirstView()
        }
    }
}

struct ContentView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem{
                    Image(systemName: "house")
                }
            SecondTabView()
                .tabItem {
                    Image(systemName: "calendar")
                }
            ThirdTabView()
                .tabItem {
                    Image(systemName: "gearshape")
                }
        }
    }
}





