//
//  SecondTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//


import SwiftUI
import FSCalendar

struct SecondTabView: UIViewRepresentable {
   
   func makeUIView(context: Context) -> UIView {
       
       typealias UIViewType = FSCalendar
       
       let fsCalendar = FSCalendar()
           
       return fsCalendar
   }
   
   func updateUIView(_ uiView: UIView, context: Context) {
   }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
