//
//  CupAnimationViewModel.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import Foundation
import SwiftUI

class CupViewModel: ObservableObject {
    @Published public var progress: CGFloat = 0.1
    @Published public var showCup: Bool = false
    @Published public var showBubble: Bool = false
    @Published public var showBubble1: Bool = false
    @Published public var showBubble2: Bool = false
    @Published public var showBubble3: Bool = false
    private var timer = Timer()
    
    public func startAnimation() {
        timer = Timer.scheduledTimer(timeInterval: 0.005, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
        print("asd")
    }
    
    @objc private func timerAction() {
        self.progress += 0.001
        
        if self.progress > 0.35 {
            withAnimation {
                showBubble = true
            }
        }
        if self.progress > 0.5 {
            withAnimation {
                showBubble1 = true
            }
        }
        if self.progress > 0.7 {
            withAnimation {
                showBubble2 = true
            }
        }
        if self.progress > 0.8 {
            withAnimation {
                showBubble3 = true
            }
        }
        
        if self.progress > 0.9 {
            timer.invalidate()
            
            withAnimation {
                showCup = true
            }
        } else {
            print(progress)
        }
    }
}
