//
//  DetailBadgeView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct DetailBadgeView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack{
                CustomColor.white
                VStack(alignment: .center) {
                    Text("Jakarta Culinary Enthusiast")
                        .font(.system(.title2).bold())
                        .foregroundColor(.black)
                    
                    VStack{
                        Image("soto_betawi")
                            .resizable()
                            .frame(width: (geo.size.width/2)-60, height: (geo.size.width/2)-60)
                    }
                    .frame(width: (geo.size.width/2)-40, height: (geo.size.width/2)-40)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(color: .gray, radius: 3, x: 0, y: 0)
                    .padding(EdgeInsets(top: 20, leading: 0, bottom: 5, trailing: 0))
                    
                    Text("Ondel-ondel")
                        .font(.system(.caption))
                        .foregroundColor(.black)
                    
                    HStack {
                        Text("Sejarah Ondel-ondel")
                            .font(.system(.title2))
                            .foregroundColor(.black)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))
                    
                    HStack {
                        Text(#"""
                            Ondel-ondel adalah bentuk pertunjukan rakyat Betawi yang sering ditampilkan dalam pesta pesta rakyat. Mulanya, ondel-ondel pada zaman dahulu digunakan sebagai penolak bala dan penjaga kampung. Dan hingga sekarang, ondel-ondel masih bertahan dan menjadi penghias wajah kota metropolitan Jakarta.
                            """#)
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

struct DetailBadgeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailBadgeView()
    }
}
