//
//  PomodoroModel.swift
//  Pomodoro-SwiftUI
//
//  Created by Safar Safarov on 23/09/22.
//

import SwiftUI

class PomodoroModel: NSObject, ObservableObject {
    // MARK: Timer Properties
    
    @Published var progress: CGFloat = 1
    @Published var timerStringValue: String = "00:00"
    
    
    
    @Published var hour: Int = 0
    @Published var minutes: Int = 0
    @Published var seconds: Int = 0
}
