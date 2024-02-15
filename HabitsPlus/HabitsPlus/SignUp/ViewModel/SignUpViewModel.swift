//
//  SignUpViewModel.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import SwiftUI
import Combine

class SignUpViewModel: ObservableObject {
    
    var publisher: PassthroughSubject<Bool, Never>!
    @Published var uiState : SignUpUIState = .none
    
    func signUp() {
        self.uiState = .loading
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            //self.uiState = .error("Usuario já existente")
            self.uiState = .success
            self.publisher.send(true)
        }
    }
    
}

extension SignUpViewModel {
    func homeView() -> some View {
        return SignUpViewRouter.makeHomeView()
    }
}
