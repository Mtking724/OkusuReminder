//
//  FirstTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//

import SwiftUI

struct FirstTabView: View {
    let currentDate = Date()
    
    var body: some View {
        VStack() {
            Text(FormattTime(currentDate))
                .font(.largeTitle)
                .padding()
            Text(FormattDate(currentDate))
                .font(.headline)
            Spacer()
        }
    }
}

private func FormattDate(_ date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "yyyy-MM-dd"
    return dateFormatter.string(from: date)
}

private func FormattTime(_ date: Date) -> String {
    let timeFormatter = DateFormatter()
    timeFormatter.dateFormat = "HH:mm:ss"
    return timeFormatter.string(from: date)
}



struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
