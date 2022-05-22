//
//  FailedQuestPage.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct FailedQuestPage: View {
    var body: some View {
        VStack(alignment: .center) {
            Spacer()
            Text("Maaf, bukan ini yang kami maksud")
                .font(.system(.title2).bold())
                .foregroundColor(.black)
            Image("soto_betawi")
                .resizable()
                .frame(width: 200, height: 300)
            Text("Ayo !!! kuliner lagi untuk membuka questnya")
            Button(action: {}){
                Text("Retry")
                    .font(.system(.body).bold())
                    .foregroundColor(CustomColor.white)
            }
            .frame(width: 150, height: 50)
            .background(CustomColor.primary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 50)
            
            Button(action: {}){
                Text("Coba Quest Lain")
                    .font(.system(.body).bold())
                    .foregroundColor(CustomColor.white)
            }
            .frame(width: 150, height: 50)
            .background(CustomColor.gray)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 10)
            Spacer()
            
        }.padding(20)
        
        
    }
}

struct FailedQuestPage_Previews: PreviewProvider {
    static var previews: some View {
        FailedQuestPage()
    }
}
