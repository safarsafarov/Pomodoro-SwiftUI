//
//  Pomodoro_SwiftUIApp.swift
//  Pomodoro-SwiftUI
//
//  Created by Safar Safarov on 23/09/22.
//

import SwiftUI

@main
struct Pomodoro_SwiftUIApp: App {
    
    @StateObject var pomodoroModel: PomodoroModel = .init()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(pomodoroModel)
        }
    }
}
 
