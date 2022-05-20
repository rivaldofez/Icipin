//
//  HomepageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI


struct HomePageView: View {
    var rowGrid = Array(repeating: GridItem(), count: 1)
    var columnGrid = Array(repeating: GridItem(), count: 1)
    
    
    var body: some View {
        NavigationView{
            VStack {
                ZStack(alignment: .topLeading){
                    Image("jakarta")
                        .resizable()
                        .frame(width: .infinity, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .shadow(color: .gray, radius: 10, x: 0, y: 1)
                    HStack{
                        Image(systemName: "xmark")
                        VStack{
                            HStack {
                                Text("Lokasi Kamu")
                                Image(systemName: "chevron.down")
                            }
                            Text("Jakarta")
                        }
                    }.padding(10)
                }
                Text("Choose your Quest")
                    .frame(width: 300, height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columnGrid, spacing: 20){
                        ForEach((0...3), id: \.self) {_ in
                            VStack{
                                Text("Makanan Khas")
                                ScrollView(.horizontal, showsIndicators: false){
                                    LazyHGrid(rows: rowGrid, spacing: 10){
                                        ForEach((0...3), id: \.self){_ in
                                            ItemQuest()
                                        }
                                    }
                                }
                                Divider()
                            }
                        }
                    }
                }
                
                Spacer()
            }.ignoresSafeArea()
        }
        .navigationViewStyle(.stack)
    }
}

struct ItemQuest: View {
    var body: some View {
        Button(action: {}){
            VStack{
                Image("jakarta")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("Soto Betawi")
            }
        }
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
