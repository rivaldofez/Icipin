//
//  McEatApp.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI

@main
struct McEatApp: App {
    var body: some Scene {
        WindowGroup {
//            QuestPageView()
//            DetailQuestView(questItem: QuestData().questData[0].questItem[0])
//            MainView()
            NavigationView {
                ScanpageView(questItem: QuestData().questData[0].questItem[0])
            }
            
//            VerifiedQuestView()
//            BadgePageView()
//            DetailBadgeView()
//            VerifiedQuestView()
//            FailedQuestPage()
        }
    }
}
