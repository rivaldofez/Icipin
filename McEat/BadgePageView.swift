//
//  BadgePageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct BadgePageView: View {
    var body: some View {
        GeometryReader { geo in
            
            VStack {
                ZStack{
                    HStack {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                        VStack(alignment:.leading) {
                            Text("Lokasi Kamu")
                                .font(.system(.caption))
                                .foregroundColor(.white)
                            Text("Jakarta")
                                .font(.system(.body).bold())
                                .foregroundColor(.white)
                        }
                        Image(systemName: "chevron.down")
                            .foregroundColor(.white)
                        Spacer()
                    }.onTapGesture {
                        print("hello")
                    }.padding(.leading, 20)
                    
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
