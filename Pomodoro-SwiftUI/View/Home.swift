//
//  Home.swift
//  Pomodoro-SwiftUI
//
//  Created by Safar Safarov on 23/09/22.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack {
            .font(.title2.bold())
            .foregroundColor(.white)
            
            GeometryReader(proxy in
                           VStack {
                
            }
            )
        }
        .padding()
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}

