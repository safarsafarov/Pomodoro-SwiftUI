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
            Text("Pomodoro Timer")
                .font(.title2.bold())
                .foregroundColor(.white)
            
            GeometryReader{proxy in
                VStack(spacing: 15) {
                    // MARK: Timer Ring
                    ZStack {
                        
                        Circle()
                            .fill(.white.opacity(0.03))
                            .padding(-40)
                        
                        
                        // MARK Shadow
                        Circle()
                            .stroke(Color("Purple"), lineWidth: 5)
                            .blur(radius: 15)
                            .padding(-2)
                        
                        Circle()
                            .fill(Color("BG"))
                        
                        Circle()
                            .trim(from: 0, to: 0.5)
                            .stroke(Color("Purple").opacity(0.7), lineWidth: 10)
                        
                        // MARK: Knob
                        GeometryReader{proxy in
                            let size = proxy.size
                            
                            Circle()
                                .fill(Color("Purple"))
                                .frame(width: 30, height: 370)
                            
                        }
                    }
                    .padding(60)
                    .frame(width: proxy.size.width)
                    .rotationEffect(.init(degrees: -90))
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
        .padding()
        .background{
            Color("BG")
                .ignoresSafeArea()
        }
        .preferredColorScheme(.dark)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PomodoroModel())
    }
}

