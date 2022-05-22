//
//  BadgePageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct BadgePageView: View {
    var columnGrid = Array(repeating: GridItem(), count: 2)
    @State var showDetailBadge: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            
            VStack {
                ZStack{
                }
                .frame(width: geo.size.width, height: 150)
                .background(RadialCorners(radGrad: RadialGradient(colors: [CustomColor.secondary, CustomColor.primary], center: .center, startRadius: 0, endRadius: 200), tl: 0, tt: 0, bl: 70, bt: 70))
                
                
                Text("Badges")
                    .font(.headline.bold())
                    .foregroundColor(.black)
                    .frame(width: 250, height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
                    .padding(.bottom, -40)
                
                
                ScrollView(.vertical, showsIndicators: false){
                    LazyVGrid(columns: columnGrid){
                        ForEach((0...10), id: \.self){_ in
                            Button(action: {
                                self.showDetailBadge = true
                                
                            }){
                                ZStack{
                                    ItemBadge(geo: geo)
                                    ItemBadgeLocked(geo: geo)
                                }
                            }
                            .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .shadow(color: .gray, radius: 3, x: 0, y: 0)
                            .padding(20)
                            
                        }
                    }.background(
                        NavigationLink(destination: DetailBadgeView(), isActive: self.$showDetailBadge){
                        }
                    )
                }
                .clipped()
                
            }.navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
        }
    }
}


struct ItemBadge: View {
    var geo: GeometryProxy
    
    var body: some View {
        VStack{
            Image("soto_betawi")
                .resizable()
                .frame(width: (geo.size.width/2)-60, height: (geo.size.width/2)-60)
        }
        .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
    }
}


struct ItemBadgeLocked: View {
    var geo: GeometryProxy
    
    var body: some View {
        VStack{
            Spacer()
            Text("6 / 16")
                .font(.system(.caption))
                .foregroundColor(.black)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 120, height: 10)
                    .foregroundColor(Color.black.opacity(0.1))
                    
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: 50, height: 10)
                    .foregroundColor(Color.red)
            }
            
            Spacer()
            
            Text("Selesaikan semua Quest yang ada di jakarta")
                .font(.system(.body).bold())
                .foregroundColor(.black)
            Spacer()
        }
        .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
        .background(.gray.opacity(0.95))
    }
}

struct BadgePageView_Previews: PreviewProvider {
    static var previews: some View {
        BadgePageView()
    }
}
