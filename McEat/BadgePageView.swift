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
    let userDefaults = UserDefaults.standard
    @State var count = 0
    @State var badgesData = [Badge]()
    @State var currentBadge = BadgeData().badgeData[0]
    
    
    var body: some View {
        let fetchDict = userDefaults.object(forKey: "dictQuest") as? [String:Bool]
        
        GeometryReader { geo in
            
            ZStack{
                CustomColor.white
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
                            ForEach(badgesData, id: \.id){badge in
                                Button(action: {
                                    self.showDetailBadge = true
                                    currentBadge = badge
                                }){
                                    ZStack{

                                        if(badge.isUnlock){
                                            ItemBadge(geo: geo, badge: badge)
                                        }else{
                                            ItemBadge(geo: geo, badge: badge)
                                            ItemBadgeLocked(geo: geo, badge: badge)
                                        }
                                    }
                                }
                                .disabled(!badge.isUnlock)
                                .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
                                .background(.white)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .shadow(color: CustomColor.gray, radius: 3, x: 0, y: 0)
                                .padding(20)
                                
                            }
                        }.background(
                            NavigationLink(destination: DetailBadgeView(badge: currentBadge), isActive: self.$showDetailBadge){
                            }
                        )
                    }
                    .clipped()
                    
                }
            }
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
        }.onAppear{
                badgesData.removeAll()
               var count = 0
               for bg in BadgeData().badgeData {
                   count = 0
                   for i in 0..<bg.require.count {
                        let req = fetchDict?[bg.require[i]]
                        if(req ?? false){
                            count += 1
                        }
                    }
                   if(count == bg.require.count){
                       badgesData += [Badge(title: bg.title, tagline: bg.tagline, image: bg.image, isUnlock: true, require: bg.require, storyHeadline: bg.storyHeadline, story: bg.story,clue: bg.clue, progress: count)]
                   }else{
                       badgesData += [Badge(title: bg.title, tagline: bg.tagline, image: bg.image, isUnlock: bg.isUnlock, require: bg.require, storyHeadline: bg.storyHeadline, story: bg.story,clue: bg.clue, progress: count)]
                   }
            }
        }
    }
}


struct ItemBadge: View {
    var geo: GeometryProxy
    var badge: Badge
    
    var body: some View {
        VStack{
            Image(badge.image)
                .resizable()
                .frame(width: (geo.size.width/2)-60, height: (geo.size.width/2)-60)
        }
        .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
    }
}


struct ItemBadgeLocked: View {
    var geo: GeometryProxy
    var badge: Badge
    
    
    var body: some View {
        VStack{
            Spacer()
            Text("\(badge.progress) / \(badge.require.count)")
                .font(.system(.caption))
                .foregroundColor(.black)
            
            ZStack(alignment: .leading) {
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 120, height: 10)
                    .foregroundColor(Color.black.opacity(0.1))
                    
                
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .frame(width: (CGFloat(badge.progress)/CGFloat(badge.require.count)) * 120, height: 10)
                    .foregroundColor(CustomColor.primary)
            }
            
            Spacer()
            
            Text(badge.clue)
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
