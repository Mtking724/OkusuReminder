//
//  SecondTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//


import SwiftUI

struct SecondTabView: View {
    @State  var selectedDate:Date = Date()
    var body: some View {
            DatePicker(selection: $selectedDate,
                label: { Text("Date") }
            ).environment(\.locale, Locale(identifier: "ja_JP"))
            .datePickerStyle(.graphical)
            .frame(width: 500, height: 900)
            .background(Color.orange)
            .accentColor(.mint)
        }
    }

    
struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
