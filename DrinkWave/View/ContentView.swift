//
//  ContentView.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/6/22.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State var progress: CGFloat = 0.6
    @State var startAnimation: CGFloat = 0.5
    @State var waveHeight: CGFloat = 0.1
    
    var body: some View {
        ZStack {
            Color(red: 0.95, green: 0.95, blue: 0.98)
            
            VStack {
                GeometryReader { proxy in
                    let size = proxy.size
                    
                    //MARK: Water drop
                    ZStack {
                        PartyCup()

                        // Wave Form Shape
                        WaterWave(progress: progress, waveHeight: waveHeight, offset: startAnimation)
                            .fill(.blue)
                        // Water Drops
                            .overlay(content: {
                                ZStack {
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: -20)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: 40, y: 30)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 20, height: 20)
                                        .offset(x: -30, y: 80)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 25, height: 25)
                                        .offset(x: 50, y: 70)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 10, height: 10)
                                        .offset(x: 40, y: 100)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: -40, y: 50)
                                }
                            })
                            .mask{
                                PartyCup()
                                    .aspectRatio(contentMode: .fit)
                                    .padding(20)
                            }
                    }
                    .frame(width: size.width, height: size.height, alignment: .center)
                    .onAppear {
                        // Animation
                        withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                            startAnimation = size.width
                        }
                    }
                }
                .frame(height: 350)
            }
            .padding()
        .frame(width: .infinity, height: .infinity, alignment: .top)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
