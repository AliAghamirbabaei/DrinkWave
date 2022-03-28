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
