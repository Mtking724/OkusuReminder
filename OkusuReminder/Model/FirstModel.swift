//
//  FirstModel.swift
//  OkusuReminder
//
//  Created by Motoki Okayasu on 2023/10/24.
//

import Foundation
import SwiftUI

//画面遷移のためのロジック
class FirrstViewModel: ObservableObject {
    @Published var isLinkActive = false//falseにすることで画面遷移のトリガーを制御
    
    
    func NavigateToFirstTabView() {
        isLinkActive = true//画面遷移をトリガーする。
    }
}
