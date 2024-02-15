//
//  SignUpView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import SwiftUI

struct SignUpView: View {
    
    // Nome completo
    // Email
    // Senha
    // Documento
    // Telefone
    // Data nascimento
    // genero
    @State var fullName = ""
    @State var email = ""
    @State var password = ""
    @State var document = ""
    @State var phone = ""
    @State var birthday = ""
    @State var gender = Gender.male
    
    @ObservedObject var viewModel : SignUpViewModel
    
    var body: some View {
        ZStack {
            ScrollView(showsIndicators: false) {
                VStack (alignment: .center){
                    
                    VStack(alignment: .leading, spacing: 8){
                        Text("Cadastro")
                            .foregroundColor(.black)
                            .font(.title.bold())
                            .padding(.bottom, 8)
                        
                        fullNameField
                        emailField
                        documentField
                        phoneField
                        birthdayField
                        
                        genderField
                        
                        saveButton
                    }
                    
                    Spacer()
                }.padding(.horizontal, 8)
            }.padding(20)
            if case SignUpUIState.error(let value) = viewModel.uiState {
                Text("")
                    .alert(isPresented: .constant(true)) {
                        Alert(title: Text("Habit"), message: Text(value), dismissButton: .default(Text("OK")){
                        })
                    }
            }
        }
    }
}

extension SignUpView {
    var fullNameField: some View {
        TextField("", text: $fullName)
            .border(Color.black)
        
    }
}

extension SignUpView {
    var emailField: some View {
        TextField("", text: $email)
            .border(Color.black)
    }
}

extension SignUpView {
    var passwordField: some View {
        SecureField("", text: $password)
            .border(Color.black)
    }
}

extension SignUpView {
    var documentField: some View {
        TextField("", text: $document)
            .border(Color.black)
    }
}

extension SignUpView {
    var phoneField: some View {
        TextField("", text: $phone)
            .border(Color.black)
    }
}

extension SignUpView {
    var birthdayField: some View {
        TextField("", text: $birthday)
            .border(Color.black)
    }
}


extension SignUpView {
    var saveButton: some View {
        Button("Realize o seu Cadastro"){
            viewModel.signUp()
        }
    }
}

extension SignUpView {
    var genderField: some View {
        Picker("Gender", selection: $gender) {// Picker é um seletor que vai ser baseado em uma lista de generos pré definidos (Por isso que usamos os protocolos de CaseIterable e Identifiable)
            ForEach(Gender.allCases, id: \.self) { value in
                Text(value.rawValue)
                    .tag(value)
                
                /*
                 ForEach([1,2,3,4,5], id: \.self) { number in
                 Text("\(number)")
                 Exemplo para lembrar do ForEach
                 }*/
            }
        }.pickerStyle(.segmented)
            .padding(.top, 16)
            .padding(.bottom, 32)
    }
}


#Preview {
    SignUpView(viewModel: SignUpViewModel())
}
