//
//  SignInViewModel.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import Foundation


class SignInViewModel: ObservableObject {
    
    @Published var uiState: SignInUIState = .none
    
    func login(email: String, password: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1){
            self.uiState = .goToHomeScreen
        }
    }
}
