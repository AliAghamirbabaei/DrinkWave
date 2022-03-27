//
//  RedPartyCup.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct RedPartyCup: View {
    @State var showCup: Bool = true
    @State var progress: CGFloat = 0.5
    @State var startAnimation: CGFloat = 0
    @State var waveHeight: CGFloat = 0.1
    
    var body: some View {
        ZStack {
            Color(#colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1))

            if showCup {
                ZStack {
                    CupShape()
                        .stroke(Color("darkRed"), lineWidth: 4)
                        .background(
                            CupShape()
                                .fill(.red)
                    )

                    Group {
                        Rectangle()
                            .foregroundColor(Color("darkRed"))
                            .frame(width: 95, height: 4)
                        Rectangle()
                            .foregroundColor(Color("darkRed"))
                            .frame(width: 95, height: 4)
                            .padding(.top)
                        Rectangle()
                            .foregroundColor(Color("darkRed"))
                            .frame(width: 94, height: 4)
                            .padding(.top, 32)
                        Rectangle()
                            .foregroundColor(Color("darkRed"))
                            .frame(width: 94, height: 4)
                            .padding(.top, 48)
                    }
                    .padding(.bottom, 40)
                    .padding(.trailing, 3)
                }

                TopCupShape()
                    .foregroundColor(.white)
                    .padding(.bottom, -4)
            } else {
                VStack {
                    GeometryReader {proxy in
                        let size = proxy.size
                        
                        ZStack {
                            WaterWave(progress: progress, waveHeight: 0.04, offset: startAnimation)
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
                                    CupShape()
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
                .frame(height: 200)
            }
        }
        .ignoresSafeArea()
        .onAppear {
            withAnimation(.easeIn(duration: 5)) {
                showCup.toggle()
            }
        }
    }
}
struct RedPartyCup_Previews: PreviewProvider {
    static var previews: some View {
        RedPartyCup()
    }
}
