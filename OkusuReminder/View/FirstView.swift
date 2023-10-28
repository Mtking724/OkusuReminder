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
            //Text,Image,STARTButtonを縦にならべる
            Text("おくすリマインダー")
                .font(.largeTitle.bold())
                .offset(y: -40)
            Image("grandma")
                .resizable()
                .frame(width: 200, height: 280)
            Button(action: {}) {
                Text("スタート")
                    .font(.title2.bold())
            }
            .buttonStyle(RoundedButtonStyle())
            .offset(y: 30)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
    }
}

//ButtonStyleメソッドでボタンを汎用化
struct RoundedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .foregroundColor(.white)
            .background(Color.mint)
            .cornerRadius(15)
            .opacity(configuration.isPressed ? 0.2 : 1)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
