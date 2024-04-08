//
//  PreviewProvider.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/8/24.
//

import SwiftUI

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.shared
    }
}

class DeveloperPreview {
    static let shared = DeveloperPreview()
    
    let user = User(id: NSUUID().uuidString, fullName: "Max Verstappen", email: "max@gmail.com", username: "maxverstappen1")
}
