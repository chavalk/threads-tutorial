//
//  ContentViewModel.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/7/24.
//

import Foundation
import Combine
import Firebase

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setUpSubscribers()
    }
    
    private func setUpSubscribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
        }
    }
}
