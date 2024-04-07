//
//  RegistrationViewModel.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/7/24.
//

import Foundation

class RegistrationViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    @Published var fullName = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService.shared.createUser(withEmail: email, password: password, fullName: fullName, username: username)
    }
}
