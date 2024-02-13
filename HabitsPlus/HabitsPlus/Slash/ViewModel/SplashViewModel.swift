//
//  SplashViewModel.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import Foundation


class SplashViewModel : ObservableObject {
    @Published var uiState: SplashUIState = .loading

    
    func onAppear(){ // Função que altera a view quando ela aparece (Muda a Splash que recebe um caso de uso do SplashUIState (Model))
        print("Executando a função onAppear na ViewModel")
        DispatchQueue.main.asyncAfter(deadline: .now() + 7) {
            self.uiState = .goToSignInScreen
            
        }
    }
    
    func signInView() -> some View {
        
    }
    
}
