//
//  QuestData.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

class QuestData {
    var questData = [QuestItem]()
    
    init(){
        questData.append(contentsOf: [
            QuestItem(title: "Santan Kental", image: "soto_betawi",
                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                ],
                      isUnlock: false)
            
        ])
    }
}
