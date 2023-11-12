//
//  SecondTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//


import SwiftUI

struct SecondTabView: View {
    
    let week: [String] = ["日","月","火","水","木","金","土"]
    let days:[Date] = Date().getAllDays()
    
    
    var body: some View {
        
        VStack {
            
            Text(Date().DateToString(format:"yyyy年M月"))
            
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                    
                    ForEach(week, id: \.self) { i in
                        Text(i)
                    }
                    
                    ForEach((0...41), id: \.self){ index in
                        VStack {
                            if(index < days.count) {
                                Text(days[index].DateToString(format: "d"))
                            }else{
                                Text("--")
                            }
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.mint)
                                .opacity(0.5)
                        }
                    }
                }
            }
        }
    }
}

//
//struct SecondTabView: UIViewRepresentable {
//    func makeUIView(context: Context) -> some UIView {
//        let calendarView = UICalendarView()
//              // カレンダービューの背景色をオレンジに設定
//              calendarView.backgroundColor = UIColor.orange
//              calendarView.tintColor =  UIColor.systemMint
//              calendarView.locale = Locale(identifier: "ja")
//
//              return calendarView
//    }
//
//    func updateUIView(_ uiView: UIViewType, context: Context) {
//    }
//    struct SampleView: View {
//        var body: some View {
//            SecondTabView()
//                .padding()
//                .navigationTitle("UICalenderView")
//                .ignoresSafeArea()
//            //背景色をオレンジにしたい。
//            //薬を飲み終わったらハンコが押されるようにしたい
//        }
//    }
//}
//
//
    
struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
