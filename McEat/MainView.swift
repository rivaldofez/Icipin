//
//  MainView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.red
    }
    
    var body: some View {
        NavigationView{
            TabView {
                QuestPageView()
                    .tabItem{
                        Label("Quest", systemImage: "house.fill")
                    }
                
                AwardView()
                    .tabItem{
                        Label("Award", systemImage: "gift")
                            .background(.red)
                    }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
