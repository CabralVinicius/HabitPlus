//
//  SignInViewRouter.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import Foundation
import SwiftUI
import Combine

enum SignInViewRouter {
    static func makeHomeView() -> some View {// Essa função vai construir uma view, por isso do retorno da some View
        let viewModel = HomeViewModel()
        return HomeView(viewModel: viewModel)
            .onAppear(){
                print("Bateu no Enum da HomeViewModel")
            }
    }
    
    static func makeSignUpView(publisher: PassthroughSubject<Bool, Never>!) -> some View {
        let viewModel = SignUpViewModel()
        viewModel.publisher = publisher
        return SignUpView(viewModel: viewModel)
    }
}
