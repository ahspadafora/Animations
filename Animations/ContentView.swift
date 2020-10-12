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
        /// interpolating spring animation with 1 second delay
        /*
         Button("Tap Me") {
         self.animationAmount += 1
         }.padding(50)
         .foregroundColor(Color.white)
         .background(Color.red)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.interpolatingSpring(stiffness: 50, damping: 1)
         .delay(1))
         .blur(radius: (animationAmount - 1) * 3)
         */
        
        /// ease in out animation for 2 seconds
        /*
         Button("Tap Me") {
         self.animationAmount += 1
         }.padding(50)
         .foregroundColor(Color.white)
         .background(Color.red)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.easeInOut(duration: 2)
         .delay(1))
         .blur(radius: (animationAmount - 1) * 3)
         */
        
        /// 1 second easeInOut animation that bounces up and down before settling in final size
        
        /*
         Button("Tap Me") {
         self.animationAmount += 1
         }.padding(50)
         .foregroundColor(Color.white)
         .background(Color.red)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.easeInOut(duration: 1)
         .repeatCount(3, autoreverses: true)
         )
         .blur(radius: (animationAmount - 1) * 3)
         */
        /// repeat forever animation
        /*
         Button("Tap Me") {
         self.animationAmount += 1
         }.padding(50)
         .foregroundColor(Color.white)
         .background(Color.red)
         .clipShape(Circle())
         .scaleEffect(animationAmount)
         .animation(Animation.easeInOut(duration: 1)
         .repeatForever(autoreverses: true)
         )
         .blur(radius: (animationAmount - 1) * 3)
         */
        
        // use repeatForever and onAppear to create animations that start & last during a views lifetime
        // adds a red circle path around the botton the continuously grows
        Button("Tap Me") {
            //self.animationAmount += 1
        }
        .padding(50)
        .foregroundColor(Color.white)
        .background(Color.red)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
            .animation(Animation.easeInOut(duration: 1)
            .repeatForever(autoreverses: false)
            )
        )
        .onAppear{
            self.animationAmount = 2
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
