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
            // ViewModel. ??
        }
    }
}

extension SignUpView {
    var genderField: some View {
        Picker("Gender", selection: $gender) {
            ForEach(Gender.allCases, id: \.self) { value in
                Text(value.rawValue)
                    .tag(/*@START_MENU_TOKEN@*/"Tag"/*@END_MENU_TOKEN@*/)
            }
        }
    }
}


#Preview {
    SignUpView()
}
