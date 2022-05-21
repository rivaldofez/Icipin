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
            GeometryReader { geo in
                VStack {
                    ZStack(alignment: .topLeading){
                        Color.red
                            .frame(width: geo.size.width, height: 400)
                            .clipShape(RoundedRectangle(cornerRadius: 50))
                            .shadow(color: .gray, radius: 10, x: 0, y: 1)
                        HStack{
                            Image(systemName: "xmark")
                            VStack{
                                HStack {
                                    Text("Lokasi Kamu")
                                    Image(systemName: "chevron.down")
                                }
                                Text("Jakarta").onTapGesture {
                                    print("hello")
                                }
                            }
                        }.padding(.top, 30)
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
                                    HStack{
                                        Text("Makanan Khas")
                                        Spacer()
                                    }
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
                        }.padding(10)
                    }
                    
                    Spacer()
                }.ignoresSafeArea()
            }
        }
        .navigationViewStyle(.stack)
        .navigationTitle("Helloo")
        .navigationBarHidden(true)
    }
}



struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView()
    }
}
