//
//  DetailBadgeView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct DetailBadgeView: View {
    var badge: Badge
    var body: some View {
        GeometryReader { geo in
            ZStack{
                CustomColor.white
                VStack(alignment: .center) {
                    Text(badge.tagline)
                        .font(.system(.title2).bold())
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    
                    VStack{
                        Image(badge.image)
                            .resizable()
                            .frame(width: (geo.size.width/2)-60, height: (geo.size.width/2)-60)
                    }
                    .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .gray, radius: 3, x: 0, y: 0)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 5, trailing: 0))
                    
                    Text(badge.title)
                        .font(.system(.caption))
                        .foregroundColor(.black)
                    
                    HStack {
                        Text(badge.storyHeadline)
                            .font(.system(.title2))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                    
                    HStack {
                        Text(badge.story)
                        .font(.system(.body))
                        .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 10, leading: 20, bottom: 0, trailing: 20))
                    
                    Spacer()
                }
            }.navigationBarTitleDisplayMode(.inline)
        }
    }
}

//struct DetailBadgeView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailBadgeView()
//    }
//}
