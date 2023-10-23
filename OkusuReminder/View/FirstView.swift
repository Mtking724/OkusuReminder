//
//  FirstView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//

import SwiftUI

struct FirstView: View {
    var body: some View {
        VStack {
            Text("おくすリマインダー")
                .font(.largeTitle)
                .offset(y: -30)
            Image("grandma")
                .resizable()
                .frame(width :180, height: 280)
            Capsule()
                .frame(width: 300, height: 100)
                .offset(y: 40)
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
