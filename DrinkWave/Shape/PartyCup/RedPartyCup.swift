//
//  RedPartyCup.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct RedPartyCup: View {
    var body: some View {
        ZStack {
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
        }
    }
}
struct RedPartyCup_Previews: PreviewProvider {
    static var previews: some View {
        RedPartyCup()
    }
}
