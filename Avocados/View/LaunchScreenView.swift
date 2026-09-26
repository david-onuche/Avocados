//
//  LaunchScreenView.swift
//  Avocados
//
//  Created by David Onuche on 25/09/2026.
//

import SwiftUI

struct LaunchScreenView: View {
    // MARK: - PROPERTIES
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center, spacing: 12) {
                Image("avocado")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240, alignment: .center)
                    .scaleEffect(self.pulsateAnimation ? 1.0 : 0.9)
                    .opacity(self.pulsateAnimation ? 1.0 : 0.9)
                    .animation(Animation.easeInOut(duration: 1.2).repeatForever(autoreverses: true), value: pulsateAnimation)
                
                Text("AVOCADOS")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .foregroundColor(Color.white)
                    .shadow(color: Color.black.opacity(0.4), radius: 4, x: 0, y: 4)
            }
            .offset(y: -20)
        }
        .onAppear {
            self.pulsateAnimation = true
        }
    }
}

struct LaunchScreenView_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreenView()
    }
}
