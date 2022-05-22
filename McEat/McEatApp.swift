//
//  McEatApp.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI

@main
struct McEatApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
//            QuestPageView()
//            DetailQuestView(questItem: QuestData().questData[0].questItem[0])
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
//                .environment(\.managedObjectContext, dataController.container.viewContext)
//            NavigationView {
//                ScanpageView(questItem: QuestData().questData[0].questItem[0])
//            }
            
//            VerifiedQuestView(questItem: QuestData().questData[0].questItem[0])
//            BadgePageView()
//            DetailBadgeView()
//            VerifiedQuestView()
//            FailedQuestPage()
        }
    }
}
