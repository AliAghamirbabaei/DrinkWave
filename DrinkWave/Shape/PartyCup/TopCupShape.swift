//
//  TopCupShape.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct TopCupShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cX = rect.midX + 6
        let cY = rect.midY - 12
        
        var path = Path()
        
        path.move(to: CGPoint(x: cX, y: cY))
        path.addLines([CGPoint(x: cX + 55, y: cY - 84), CGPoint(x: cX - 66, y: cY - 84)])
        path.addCurve(to: CGPoint(x: cX - 61, y: cY - 90),
                      control1: CGPoint(x: cX - 71, y: cY - 84),
                      control2: CGPoint(x: cX - 79, y: cY - 90))
        path.addLine(to: CGPoint(x: cX + 53, y: cY - 90))
        
        path.addCurve(to: CGPoint(x: cX + 55, y: cY - 84),
                      control1: CGPoint(x: cX + 60, y: cY - 90),
                      control2: CGPoint(x: cX + 60, y: cY - 85))
        path.closeSubpath()
        
        return path
    }
}

struct TopCupShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            TopCupShape()
                .stroke(style: StrokeStyle(lineWidth: 4))
        }
    }
}
