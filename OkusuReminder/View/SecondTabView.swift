//
//  SecondTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//


import SwiftUI

struct SecondTabView: UIViewRepresentable {
    func makeUIView(context: Context) -> some UIView {
        let calendarView = UICalendarView()
              // カレンダービューの背景色をオレンジに設定
              calendarView.backgroundColor = UIColor.orange
              calendarView.tintColor =  UIColor.systemMint
              calendarView.locale = Locale(identifier: "ja")
              
              return calendarView
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
    }
    struct SampleView: View {
        var body: some View {
            SecondTabView()
                .padding()
                .navigationTitle("UICalenderView")
                .ignoresSafeArea()
            //背景色をオレンジにしたい。
            //薬を飲み終わったらハンコが押されるようにしたい
        }
    }
}
        
        
    
struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
