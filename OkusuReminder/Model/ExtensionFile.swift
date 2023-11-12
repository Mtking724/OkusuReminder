//
//  ExtensionFile.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/11/11.
//

import Foundation

extension Date{
    func firstDayOfTheMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year,.month], from: self))!
    }
    
    mutating func plusOneDay() {
        self = Calendar.current.date(byAdding: .day, value: 1, to: self)!
    }
    
    func changeMonth(diff:Int) -> Date {
        return Calendar.current.date(byAdding: .month, value: diff, to: self)!
    }
    
    func getAllDays() -> [Date] {
        
        var day1st = firstDayOfTheMonth()
        
        //Dateの空の配列を宣言する
        var days = [Date]()
        
        
        //配列に要素を一つ追加する
        days.append(day1st)
        
        let range = Calendar.current.range(of: .day, in: .month, for: day1st)!
        
        for _ in 0..<range.count - 1{
            //日付を1日加算して配列に追加する
            day1st.plusOneDay()
            days.append(day1st)
        }
        return days
    }
    
    //曜日を数値として返す。0:日曜日, 6:土曜日
    func getWeekDay() -> Int {
        return Calendar.current.component(.weekday, from: self) - 1
    }
    //Dateからフォーマット通りにstringに変換する
    func DateToString(format: String) -> String {
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.timeZone = TimeZone.current
        df.dateFormat = format
        
        return df.string(from: self)
    }
}
