//
//  SecondTabView.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//


import SwiftUI

struct SecondTabView: View {
    
    let week: [String] = ["日","月","火","水","木","金","土"]
    @State var diff:Int = 0
    
    
    var body: some View {
        
        VStack {
            HStack {
                Button(action:{
                    diff -= 1
                }, label: {
                    Image(systemName: "arrow.backward.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.mint)
                })
                Text(Date().changeMonth(diff: diff).DateToString(format:"yyyy年M月"))
                    .font(.title)
                Button(action:{
                    diff += 1
                }, label: {
                    Image(systemName: "arrow.right.circle")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .foregroundColor(Color.mint)
                })
            }
            
            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7))
                {
                    ForEach(week, id: \.self) { i in
                        Text(i)
                            .font(.title2.bold())
                    }
                    
                    let days:[Date] = Date().changeMonth(diff: diff).getAllDays()
                    let start = days[0].getWeekDay()
                    let end = start + days.count
                    
                    ForEach((0...41), id: \.self){ index in
                        VStack {
                            if(index >= start && index < end) {
                                let i = index - start
                                Text(days[i].DateToString(format: "d"))
                                    .font(.body.bold())
                                    
                            }else{
                                Text("--")
                            }
                            RoundedRectangle(cornerRadius: 8)
                                .frame(width: 40, height: 40)
                                .foregroundColor(.white)
                                .opacity(0.5)
                        }
                    }
                }
            }
        }
        .background(Color.orange)
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
