//
//  HabitsPlusApp.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 12/02/24.
//

import SwiftUI

@main
struct HabitsPlusApp: App {
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: SplashViewModel())
        }
    }
}
