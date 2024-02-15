//
//  HomeView.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 14/02/24.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel : HomeViewModel
    
    var body: some View {
        Text("Hello, Home page")
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
