//
//  QuestModel.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct QuestItem: Identifiable {
    let id = UUID()
    let title: String
    let image: String
    let color: [Color]
    var isUnlock: Bool
}

