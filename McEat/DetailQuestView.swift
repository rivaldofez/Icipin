//
//  DetailQuestView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct DetailQuestView: View {
    var questItem: QuestItem
    
    var body: some View {
        Text(questItem.title)
    }
}

//struct DetailQuestView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailQuestView(questItem: QuestData().questData[0].questItem)
//    }
//}
