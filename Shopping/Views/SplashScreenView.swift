//
//  SplashScreenView.swift
//  Shopping
//
//  Created by Dima on 17.07.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opasity = 0.5
    
    var body: some View {
        
        if isActive {
            ContentView()
        } else {
            VStack {
                VStack {
                    Image("logo_font")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300)
                        .offset(y: -20)
                }
                .scaleEffect(size)
                .opacity(opasity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opasity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
