//
//  SignUpViewModel.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import Foundation
import SwiftUI

class SignUpViewModel: ObservableObject {
    @Published var uiState : SignUpUIState = .none
    
    func signUp() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            //self.uiState = .error("Usuario já existente")
            self.uiState = .goToHomeScreen
        }
    }
    
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
}
