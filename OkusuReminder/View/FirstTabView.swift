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
                .font(.largeTitle.bold())
                .frame(alignment: .top)
            Text(FormattDate(currentDate))
                .font(.title2.bold())
                .frame(alignment: .top)
               
            Text("薬を飲んだらボタンを押しましょう！")
                .padding()
                .font(.title3.bold())
                .frame(alignment: .leading)
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 350, height: 120)
                    .padding()
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 90,height: 90, alignment: .leading)
                    .offset(x: -120)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 350, height: 120)
                    .padding()
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 90,height: 90, alignment: .leading)
                    .offset(x: -120)
            }
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                    .frame(width: 350, height: 120)
                    .padding()
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 90,height: 90, alignment: .leading)
                    .offset(x: -120)
            }
            
                
            }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.orange)
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
