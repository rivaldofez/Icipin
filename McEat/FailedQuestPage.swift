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
                .frame(width: 200, height: 200)
            Text("Ayo !!! kuliner lagi untuk membuka questnya")
            Button(action: {}){
                Text("Retry")
            }
            .frame(width: 140, height: 50)
            .background(.red)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(.top, 50)
            
            Button(action: {}){
                Text("Coba Quest Lain")
            }
            .frame(width: 140, height: 50)
            .background(.gray)
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
