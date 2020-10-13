//
//  ContentView.swift
//  Animations
//
//  Created by Amber Spadafora on 10/11/20.
//  Copyright © 2020 Amber Spadafora. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    //@State private var animationAmount: CGFloat = 1.0
    
    @State private var animationAmount: Double = 1.0
    @State private var enabled = false
    
    @State private var dragAmount = CGSize.zero
    
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
        /*
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
 */
        
        // animation binding
        /*
        print(animationAmount)
        return VStack {
            Stepper("scale amount", value: $animationAmount.animation(Animation.easeInOut(duration: 1)
            .repeatCount(3, autoreverses: true)), in: 1...10)
            
            Spacer()
            Button("Tap Me") {
                self.animationAmount += 1
            }
            .padding(50)
            .foregroundColor(Color.white)
            .background(Color.red)
            .clipShape(Circle())
            .scaleEffect(animationAmount)
        }
        */
        
        // rotation3dEffect
        /*
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.animationAmount += 360.0
            }
        }
        .padding(50)
        .foregroundColor(Color.white)
        .background(Color.red)
        .clipShape(Circle())
        .rotation3DEffect(.degrees(animationAmount), axis: (x: 0, y: 1, z: 0))
        */
        // animate button background color & clipShape change
        /*
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.enabled.toggle()
            }
        }
        .padding(50)
        .foregroundColor(Color.white)
        .background(enabled ? Color.blue : Color.red)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.default)
        */
        
        // multiple animation modifiers
        /*
        Button("Tap Me") {
            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
                self.enabled.toggle()
            }
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(.default)
        .foregroundColor(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
 */
        
        // Animating Gestures
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(dragAmount)
            .gesture(DragGesture()
                .onChanged({
                    self.dragAmount = $0.translation
                })
                .onEnded({ _ in
                    self.dragAmount = CGSize.zero
                })
        )
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
