//
//  SignUpViewRouter.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import Foundation
import SwiftUI


enum SignUpViewRouter {
    static func makeHomeView() -> some View {
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
    }
}
