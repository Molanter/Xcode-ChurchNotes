//
//  Item.swift
//  ChurchNotes
//
//  Created by Edgars Yarmolatiy on 6/27/23.
//

import Foundation
import SwiftUI
import SwiftData

@Model
final class Items{
    var name: String
    var timestamp: Date
    var isCheked: Bool
    var isLiked: Bool
    var notes: String
    var imageData: Data?
    var email: String
    var birthDay: Date
    
    init(name: String, isLiked: Bool, isCheked: Bool, notes: String, imageData: Data? = nil, email: String, birthDay: Date) {
        self.timestamp = .now
        self.name = name
        self.isLiked = isLiked
        self.isCheked = isCheked
        self.notes = notes
        self.imageData = imageData
        self.email = email
        self.birthDay = birthDay
    }
    
    
}

@Model
final class ItemsTitle{
    @Attribute(.unique) var name: String
    var timeStamp: Date
    
    init(name: String) {
        self.name = name
        self.timeStamp = .now
    }
    @Relationship(.cascade)
    var items: [Items] = []
}

@Model
final class UserProfile {
    var name: String
    var phoneNumber: String
    var email: String
    var cristian: Bool
    var notes = ""
    
    init(name: String, phoneNumber: String, email: String, cristian: Bool, notes: String) {
        self.name = name
        self.phoneNumber = phoneNumber
        self.email = email
        self.cristian = cristian
        self.notes = notes
    }
}
