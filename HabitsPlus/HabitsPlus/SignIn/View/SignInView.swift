//
//  SignInView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    @State var email = ""
    @State var password = ""
    @State var navigationHidden = true
    
    var body: some View {
    
        ZStack{
            if case SignInUIState.goToHomeScreen = viewModel.uiState {
                viewModel.homeView()
            } else {
                NavigationStack {

                    ScrollView(showsIndicators: false){

                        VStack(alignment: .center){
                            Image("Logo")
                                .resizable()
                                .scaledToFit()
                                .padding(.horizontal, 48)
                            
                            Text("Login")
                                .foregroundColor(.orange)
                                .font(.title.bold())
                                .padding(.bottom, 8)
                            
                            emailField
                            
                            passwordField
                            
                            enterButton
                            
                            registerLink
                            
                            Text("Copyright @yyy")
                                .foregroundColor(Color.gray)
                                .font(Font.system(size: 16).bold())
                                .padding(.top, 16)
                        }//.background(.green)
                    }//.background(.yellow)
                    if case SignInUIState.error(let value) = viewModel.uiState {
                        Text("")
                            .alert(isPresented: .constant(true)) {
                                Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("Ok")) {
                                    
                                })
                            }
                    }
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .padding(.horizontal, 32)
                .navigationBarTitle("Login", displayMode: .inline)
                .navigationBarHidden(navigationHidden)
            }
        }
        

    }
}


extension SignInView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignInView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SignInView{
    var enterButton: some View {
        Button("Entrar"){
            // acontece o evento de click
            viewModel.login(email: email, password: password)
        }
    }
}

extension SignInView {
    var registerLink: some View {
        VStack{
            Text("Ainda não possui um logion ativo?")
                .foregroundColor(.gray)
                .padding(.top, 48)
            
            ZStack{
                NavigationLink{
                    viewModel.signUpView()
                }  label: {
                    Text("Realize seu cadastro")
                }
                
            }
        }
    }
}

#Preview {
    SignInView(viewModel: SignInViewModel())
}
