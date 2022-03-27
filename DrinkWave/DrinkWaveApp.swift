//
//  DrinkWaveApp.swift
//  DrinkWave
//
//  Created by Ali Aghamirbabaei on 3/6/22.
//

import SwiftUI

@main
struct DrinkWaveApp: App {
    var body: some Scene {
        WindowGroup {
            RedPartyCup()
                .environmentObject(CupViewModel())
        }
    }
}
