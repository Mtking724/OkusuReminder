//
//  AllTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/29.
//

import SwiftUI

struct AllTabView: View {
    var body: some View {
        TabView {
            FirstTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "pill.circle.fill")
                        Text("今日のくすり")
                    }
            }.tag(1)
            SecondTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "calendar")
                        Text("カレンダー")
                    }
            }.tag(2)
            ThirdTabView()
                .tabItem {
                    VStack {
                        Image(systemName: "gearshape")
                        Text("設定")
            }.tag(3)
        }
    }
}
}

struct AllTabView_Previews: PreviewProvider {
    static var previews: some View {
        AllTabView()
    }
}
