//
//  SignInView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import SwiftUI

struct SignInView: View {
    
    @ObservedObject var viewModel: SignInViewModel
    
    var body: some View {
        Text("Tela de Login")
            .padding(60)
            .background(.blue)
            .onAppear(){
                print("Mudou para a tela de SignInView")
            }
    }
}

#Preview {
    SignInView(viewModel: SignInViewModel())
}
