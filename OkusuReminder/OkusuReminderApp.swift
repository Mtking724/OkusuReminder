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
            TabView {
                FirstTabView()
                    .tabItem{
                        Image(systemName: "house")
                    }
                SecondTabView()
                    .tabItem {
                        Image(systemName: "calender")
                    }
                ThirdTabView()
                    .tabItem {
                        Image(systemName: "gearshape")
                    }
            }
        }
    }
}
