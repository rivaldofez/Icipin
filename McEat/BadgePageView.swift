//
//  BadgePageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct BadgePageView: View {
    var columnGrid = Array(repeating: GridItem(), count: 2)
    
    var body: some View {
        GeometryReader { geo in
            
            VStack {
                ZStack{
                }
                .frame(width: geo.size.width, height: 150)
                .background(Corners(color: .red, tl: 0, tt: 0, bl: 80, bt: 80))
                
                
                Text("Badges")
                    .font(.headline.bold())
                    .foregroundColor(.black)
                    .frame(width: 250, height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
                
                
                LazyVGrid(columns: columnGrid){
                    ForEach((0...10), id: \.self){_ in
                        ZStack{
                            Image("soto_betawi")
                                .resizable()
                                .frame(width: (geo.size.width/2)-60, height: (geo.size.width/2)-60)
                        }
                        .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
                        .background(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .shadow(color: .gray, radius: 3, x: 0, y: 0)
                        .padding(20)
                        
                }
            }
                
            }.navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct BadgePageView_Previews: PreviewProvider {
    static var previews: some View {
        BadgePageView()
    }
}
