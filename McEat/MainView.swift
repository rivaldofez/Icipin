//
//  MainView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            HomepageView()
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            
            FoodBookView()
                .tabItem{
                    Label("Food Book", systemImage: "book.fill")
                }
            
            AwardView()
                .tabItem{
                    Label("Award", systemImage: "gift")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
