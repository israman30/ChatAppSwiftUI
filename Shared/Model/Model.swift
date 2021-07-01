//
//  Model.swift
//  ChatApp
//
//  Created by Israel Manzo on 6/30/21.
//

import SwiftUI
import Firebase

struct ModelMessages: Codable, Identifiable, Hashable {
    var id = UUID().uuidString
    var message: String
    var user: String
    var timeStamp: String
    
    enum CodingKeys: String, CodingKey {
        case id, message, user, timeStamp
    }
}
