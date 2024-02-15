//
//  SplashView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 12/02/24.
//

import SwiftUI

struct SplashView: View {
    
    @ObservedObject var viewModel : SplashViewModel
    
    var body: some View {
        
        Group{
            switch viewModel.uiState {
            case .loading:
                loadingView()
                
            case .goToSignInScreen:
                // Nabegar para a proxima tela
                viewModel.signInView()
                
            case .goToHomeScreen:
                Text("Carregar tela principal")
                
            case.error(let msg):
                loadingView(error: msg)
            }
        }.onAppear(perform: {
            print("Vai disparar a função onAppear na ViewModel")
            viewModel.onAppear()
        })
    }
}

#Preview {
    SplashView(viewModel: SplashViewModel())
}



//MARK: EXTENSIONS
// 1.  Compartilhamento de Objetos
// Usamos quando precisamos do componente reitulizado em outra parte do código, se não temos a necessidade de reutilizaro mesmo componente em outras partes do codigo, podemos usar variaveis e funções em extensions
// struct
struct LoadingView: View {
    var body: some View {
        ZStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .ignoresSafeArea()
                .background(.red)
        }
    }
}
// MARK: - Qual a diferença de usa uma variavel e uma função para expor uma view?
// Resposta: Nas funções podemos usar parametros, nas variaveis os valores são fixos e não podemos usar parametros.
// 2. Criando por variavel de extenção
extension SplashView {
    var loading: some View {
        ZStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .ignoresSafeArea()
                .background(.blue)
            
        }
    }
}

// 3. Usando funções em extenções
extension SplashView {
    func loadingView(error: String? = nil) -> some View {
        ZStack{
            Image("Logo")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(20)
                .ignoresSafeArea()
                .background(.green)
            
            if let error {
             Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(error), dismissButton: .default(Text("Ok")){
                          // Faz algo quando some o alerta
                        })
                    }
            }
        }
    }
}
