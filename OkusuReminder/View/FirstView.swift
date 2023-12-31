//
//  FirstView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//

import SwiftUI

struct FirstView: View {
//画面遷移の時に使用するbool値
    @State private var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            Text("おくすリマインダー")
                .font(Font.custom("MochiyPopOne-Regular", size: 35))
                .foregroundColor(.black)
                .font(.largeTitle)
                .bold()
                .offset(y: -40)
            Image("grandma")
                .resizable()
                .frame(width: 200, height: 280)
                .offset(y: -25)
            Button(action: {
                isPresented = true //trueにしないと画面遷移されない
            }) {
                Text("スタート")
                    .font(Font.custom("MochiyPopOne-Regular", size: 30))
                    .frame(width: 180,height: 30)
            }
            .buttonStyle(RoundedButtonStyle())
            .offset(y: 30)
            .fullScreenCover(isPresented: $isPresented) {
                AllTabView()
            }
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
            .cornerRadius(35)
            //ボタンを押すと透明になる。
            .opacity(configuration.isPressed ? 0.2 : 1)
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView()
    }
}
