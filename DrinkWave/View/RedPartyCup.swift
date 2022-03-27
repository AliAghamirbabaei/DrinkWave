//
//  RedPartyCup.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/27/22.
//

import SwiftUI

struct RedPartyCup: View {
    @EnvironmentObject var viewModel: CupViewModel
    
    var body: some View {
        ZStack {
            // Color(#colorLiteral(red: 0.4352941176, green: 0.5607843137, blue: 0.9176470588, alpha: 1))
            Color.black
            
            if viewModel.showCup {
                RedPartyCupShape()
                    .transition(.opacity)
            } else {
                DrinkInCup()
            }
        }
        .ignoresSafeArea()
        .onAppear {
            viewModel.startAnimation()
        }
    }
}
struct RedPartyCup_Previews: PreviewProvider {
    static var previews: some View {
        RedPartyCup()
            .environmentObject(CupViewModel())
    }
}
