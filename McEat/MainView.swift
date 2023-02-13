//
//  MainView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI

struct MainView: View {
    let persistenceController = PersistenceController.shared
    @State var selection: Int = 0
    
    init() {
        UITabBar.appearance().barTintColor = UIColor.red
    }
    
    var body: some View {
        NavigationView{
            TabView(selection: $selection) {
                QuestPageView()
                    .tabItem{
                        Label("Quest",systemImage: "scroll")
                    }.environment(\.managedObjectContext, persistenceController.container.viewContext)
                    .tag(0)
                
                BadgePageView()
                    .tabItem{
                        Label("Badge", systemImage: "star")
                            .background(.red)
                    }
                    .tag(1)
            }
        }.navigationBarHidden(true)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
