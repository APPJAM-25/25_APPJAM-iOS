//
//  ChatId.swift
//  DatingSimulation
//
//  Created by 최시훈 on 4/21/24.
//

import Foundation

struct ChatId: Codable {
    var chatId: String
}

enum ChatIdType {
    case chatId
}
class ChatIdManager {
    static func save(_ chatIdType: ChatIdType, _ value: String) {
        UserDefaults.standard.set(value, forKey: String(describing: chatIdType))
    }
    
    static func get(_ chatIdType: ChatIdType) -> String? {
        return UserDefaults.standard.string(forKey: String(describing: chatIdType))
    }
    
    static func remove(_ chatIdType: ChatIdType) {
        UserDefaults.standard.removeObject(forKey: String(describing: chatIdType))
    }
    
}
