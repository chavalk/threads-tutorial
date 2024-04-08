//
//  User.swift
//  ThreadsTutorial
//
//  Created by Jose Garcia on 4/7/24.
//

import Foundation

struct User: Identifiable, Codable {
    let id: String
    let fullName: String
    let email: String
    let username: String
    var profileImageUrl: String?
    var bio: String?
}
