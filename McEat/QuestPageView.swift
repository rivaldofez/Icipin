//
//  QuestPageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct QuestPageView: View {
    
    var rowGrid = Array(repeating: GridItem(), count: 1)
    var columnGrid = Array(repeating: GridItem(), count: 1)
    
    var body: some View {
        GeometryReader { geo in
            NavigationView{
                ZStack{
                    VStack {
                        ZStack{
                            HStack {
                                Image(systemName: "xmark")
                                VStack {
                                    Text("Lokasi Kamu")
                                    Text("Jakarta")
                                }
                                Image(systemName: "chevron.down")
                                Spacer()
                            }.onTapGesture {
                                print("hello")
                            }.padding(.leading, 20)
                            
                        }
                        .frame(width: geo.size.width, height: 150)
                        .background(Corners(color: .red, tl: 0, tt: 0, bl: 100, bt: 100))
                        
                        
                        Text("Choose your Quest")
                            .frame(width: 250, height: 60)
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
                        .offset(x:0, y:-40)
                    }
                }
                .navigationBarHidden(true)
                .ignoresSafeArea()
            }
        }
    }
}

struct ItemQuest: View {
    var color = LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
    
    var body: some View {
        Button(action: {}){
            ZStack{
                
                VStack{
                    Image("jakarta")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    Text("Soto Betawi")
                }
            }.frame(width: 150, height: 150)
                .background(Corners(color: .red.opacity(1), tl: 10, tt: 10, bl: 10, bt: 20))
                .padding(10)
        }
    }
}


struct QuestPageView_Previews: PreviewProvider {
    static var previews: some View {
        QuestPageView()
    }
}

