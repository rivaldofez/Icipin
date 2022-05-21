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
    
    @State var showDetailQuest : Bool = false
    @State var selectedQuest: QuestItem = QuestData().questData[0].questItem[0]
    
    var body: some View {
        GeometryReader { geo in
                ZStack{
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
                        
                        
                        Text("Choose your Quest")
                            .font(.headline.bold())
                            .foregroundColor(.black)
                            .frame(width: 250, height: 60)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .offset(x: 0, y: -40)
                        
                        ScrollView(.vertical, showsIndicators: false){
                            LazyVGrid(columns: columnGrid, spacing: 20){
                                ForEach(QuestData().questData, id: \.id) {quest in
                                    VStack{
                                        HStack{
                                            Text(quest.category)
                                                .font(.system(.body).bold())
                                                .foregroundColor(.black)
                                                .padding(.leading, 20)
                                            Spacer()
                                        }
                                        ScrollView(.horizontal, showsIndicators: false){
                                            LazyHGrid(rows: rowGrid, spacing: 10){
                                                ForEach(quest.questItem, id: \.id){questItem in
                                                    ItemQuest(showDetailQuestPage: self.$showDetailQuest, selectedQuestItem: self.$selectedQuest,  questItem: questItem)
                                                }
                                            }
                                        }
                                        Divider()
                                    }
                                }
                            }
                            .background(
                                NavigationLink(destination: DetailQuestView(questItem:  selectedQuest), isActive: self.$showDetailQuest){
                                }
                            )
                        }
                        .offset(x:0, y:-40)
                    }
                }
                .navigationBarHidden(true)
                .edgesIgnoringSafeArea(.top)
        }
    }
}

struct ItemQuest: View {
    @Binding var showDetailQuestPage : Bool
    @Binding var selectedQuestItem : QuestItem
    var questItem: QuestItem

    
    var body: some View {
        let titleArr = questItem.title.components(separatedBy: " ")
        Button(action: {
            showDetailQuestPage = true
            selectedQuestItem = questItem
        }){
            ZStack{
                VStack{
                    Image(questItem.image)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .offset(x: 0, y: -15)
                    HStack{
                        Text(titleArr[0])
                            .font(.system(.subheadline))
                            .foregroundColor(.white)
                        Spacer()
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    
                    HStack{
                        Text(titleArr[1])
                            .font(.system(.title2).bold())
                            .foregroundColor(.white)
                        Spacer()
                    }
                    .padding(EdgeInsets(top: 0, leading: 10, bottom: 25, trailing: 0))
                }
            }.frame(width: 130, height: 140)
                .background(RadialCorners(radGrad: RadialGradient(colors: questItem.color, center: .center, startRadius: 5, endRadius: 100), tl: 20, tt: 20, bl: 20, bt: 40))
                .padding(EdgeInsets(top: 15, leading: 10, bottom: 5, trailing: 10))
        }
    }
}

//struct QuestPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestPageView()
//    }
//}

