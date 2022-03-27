//
//  DrinkInCup.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct DrinkInCup: View {
    @EnvironmentObject var viewModel: CupViewModel
    @State var startAnimation: CGFloat = 0
    @State var waveHeight: CGFloat = 0.04
    
    var body: some View {
        VStack {
            GeometryReader {proxy in
                let size = proxy.size
                
                ZStack {
                    Color.black
                    WaterWave(progress: viewModel.progress, waveHeight: waveHeight, offset: startAnimation)
                        .fill(Color(red: 0.66, green: 0.25, blue: 0.03))
                    // Water Drops
                        .overlay(content: {
                            ZStack {
                                if viewModel.showBubble1 {
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: -20)
                                        .transition(.opacity)
                                    
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: 10, y: -20)
                                        .transition(.opacity)
                                }
                                if viewModel.showBubble2 {
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 20, height: 20)
                                        .offset(x: -30, y: 40)
                                        .transition(.opacity)
                                
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 25, height: 25)
                                        .offset(x: 25, y: 70)
                                        .transition(.opacity)
                                }
                                if viewModel.showBubble {
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 10, height: 10)
                                        .offset(x: -20, y: +57)
                                        .transition(.opacity)
                                }
                                if viewModel.showBubble3 {
                                    Circle()
                                        .fill(.white.opacity(0.1))
                                        .frame(width: 15, height: 15)
                                        .offset(x: -30, y: -50)
                                        .transition(.opacity)
                                }
                            }
                        })
                        .mask{
                            CupShape()
                                .aspectRatio(contentMode: .fit)
                                .padding()
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
        }
        .frame(height: 350)
    }
}

struct DrinkInCup_Previews: PreviewProvider {
    static var previews: some View {
        DrinkInCup()
            .environmentObject(CupViewModel())
    }
}
