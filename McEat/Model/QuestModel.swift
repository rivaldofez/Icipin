//
//  QuestModel.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct QuestItem: Identifiable {
    let id = UUID()
    let labelML: String
    let title: String
    let image: String
    let color: [Color]
    var clue: [String]
    let unlockQuest: UnlockQuest
}

struct Badge: Identifiable {
    var id = UUID()
    var title: String
    var tagline: String
    var image: String
    var isUnlock: Bool
    var require: [String]
    var storyHeadline: String
    var story: String
    var clue: String
    var progress: Int

}

struct Quest: Identifiable {
    let id = UUID()
    let category: String
    var questItem: [QuestItem]
}

struct Predict: Identifiable {
    let id = UUID()
    var label: String
    var confidence: Float
}

struct UnlockQuest: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let story: String
    
}
