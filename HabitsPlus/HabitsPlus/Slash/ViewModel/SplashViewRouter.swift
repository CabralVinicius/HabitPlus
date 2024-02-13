//
//  SplashViewRouter.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import Foundation
import SwiftUI


enum SplashViewRouter {
    static func makeSignInView() -> some View {// Essa função vai construir uma view, por isso do retorno da some View
        let viewModel = SignInViewModel()
        return SignInView(viewModel: viewModel)
            .onAppear(){
                print("Bateu no Enum")
            }
    }
}
