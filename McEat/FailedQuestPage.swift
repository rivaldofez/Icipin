//
//  FailedQuestPage.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct FailedQuestPage: View {
    var questItem: QuestItem
    @State var showScanPage = false
    @State var showQuestPage = false
    
    var body: some View {
        ZStack {
            CustomColor.white
            VStack(alignment: .center) {
                Spacer()
                Text("Maaf, bukan ini yang kami maksud")
                    .font(.system(.title2).bold())
                    .foregroundColor(.black)
                Image("sad")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 300)
                Text("Ayo !!! kuliner lagi untuk membuka questnya")
                Button(action: {
                    self.showScanPage = true
                }){
                    Text("Retry")
                        .font(.system(.body).bold())
                        .foregroundColor(CustomColor.white)
                }
                .frame(width: 150, height: 50)
                .background(CustomColor.primary)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 50)
                
                NavigationLink(destination: ScanpageView(questItem: questItem), isActive: self.$showScanPage){
                }
                
                Button(action: {
                    self.showQuestPage = true
                }){
                    Text("Coba Quest Lain")
                        .font(.system(.body).bold())
                        .foregroundColor(CustomColor.white)
                    
                }
                .frame(width: 150, height: 50)
                .background(CustomColor.gray)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .padding(.top, 10)
                NavigationLink(destination: MainView(), isActive: self.$showQuestPage){
                }
                
                Spacer()
                
            }.padding(20)
        }.navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(true)
    }
}

//struct FailedQuestPage_Previews: PreviewProvider {
//    static var previews: some View {
//        FailedQuestPage()
//    }
//}
