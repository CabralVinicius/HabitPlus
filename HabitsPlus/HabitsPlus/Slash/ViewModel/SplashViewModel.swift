//
//  SplashViewModel.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import SwiftUI


class SplashViewModel : ObservableObject {
    @Published var uiState: SplashUIState = .loading
    @State var time = 5

    
    func onAppear(){ // Função que altera a view quando ela aparece (Muda a Splash que recebe um caso de uso do SplashUIState (Model))
        print("Executando a função onAppear na ViewModel")
        print("Preparando o DispatchQueue em: (\(time) segundos)")
        DispatchQueue.main.asyncAfter(deadline: .now() + DispatchTimeInterval.seconds(time)) {
            self.uiState = .goToSignInScreen
            print("Alteração do Status da uiState")
        }
    }
    
    func signInView() -> some View {
        SplashViewRouter.makeSignInView()
            .onAppear(){
                print("Disparando a função de rota")
            }
    }
    
}
