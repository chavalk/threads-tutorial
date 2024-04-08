//
//  LoginViewModel.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/7/24.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    @MainActor
    func login() async throws {
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
