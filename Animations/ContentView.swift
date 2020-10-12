//
//  ContentView.swift
//  Animations
//
//  Created by Amber Spadafora on 10/11/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var animationAmount: CGFloat = 1.0
    
    var body: some View {
        Button("Tap Me") {
            self.animationAmount += 1
        }.padding(50)
        .foregroundColor(Color.white)
        .background(Color.red)
        .clipShape(Circle())
        .scaleEffect(animationAmount)
        .animation(.default)
        .blur(radius: (animationAmount - 1) * 3)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
