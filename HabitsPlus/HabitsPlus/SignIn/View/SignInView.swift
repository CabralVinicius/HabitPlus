//
//  SignInView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var sigInViewModel: SignInViewModel
    
    var body: some View {
        Text("Tela de Login")
            .padding(60)
            .background(.blue)
    }
}

#Preview {
    SignInView(sigInViewModel: SignInViewModel())
}
