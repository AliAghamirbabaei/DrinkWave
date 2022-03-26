//
//  CupShape.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct CupShape: Shape {
    func path(in rect: CGRect) -> Path {
        let cX = rect.midX + 6
        let cY = rect.midY - 12
        
        var path = Path()
        path.move(to: CGPoint(x: cX - 60, y: cY - 84))
        path.addLine(to: CGPoint(x: cX - 48, y: cY + 90))
        
        path.addQuadCurve(to: CGPoint(x: cX - 10, y: cY + 100), control: CGPoint(x: cX - 45, y: cY + 100))
        path.addLine(to: CGPoint(x: cX, y: cY + 100))
        
        path.addQuadCurve(to: CGPoint(x: cX + 33, y: cY + 90), control: CGPoint(x: cX + 31, y: cY + 100))
        path.addLine(to: CGPoint(x: cX + 48, y: cY - 84))
        path.closeSubpath()
        
        return path
    }
}

struct CupShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
        CupShape()
            .stroke(style: StrokeStyle(lineWidth: 4))
        }
    }
}
