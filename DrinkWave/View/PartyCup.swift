//
//  PartyCup.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct PartyCup: View {
    var body: some View {
        ZStack {
            Color.gray
            CupShape()
                .stroke(Color("darkRed"), lineWidth: 4)
                .background(
                    CupShape()
                        .fill(.red)
                )
            
            TopCupShape()
                .foregroundColor(.white)
                .padding(.bottom, -4)
        }
        .ignoresSafeArea(.all)
    }
}
struct PartyCup_Previews: PreviewProvider {
    static var previews: some View {
        PartyCup()
    }
}
