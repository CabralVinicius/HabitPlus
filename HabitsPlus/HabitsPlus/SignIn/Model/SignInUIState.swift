//
//  SignInUIState.swift
//  HabitsPlus
//
//  Created by Vinicius Cabral on 13/02/24.
//

import Foundation

enum SignInUIState {
    case none
    case loading
    case goToHomeScreen
    case error(String)
}
