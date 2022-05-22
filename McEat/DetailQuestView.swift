//
//  DetailQuestView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct DetailQuestView: View {
    var questItem: QuestItem
    var columnGrid = Array(repeating: GridItem(), count: 1)
    @State var showScanPage: Bool = false
    
    var body: some View {
        GeometryReader { geo in
            ZStack{
                CustomColor.white
                VStack {
                    Text("Clue")
                        .font(.system(.title).bold())
                        .foregroundColor(.black)
                    
                    LazyVGrid(columns: columnGrid, alignment: .leading){
                        ForEach(questItem.clue, id: \.self){clue in
                            ItemClue(clue: clue)
                        }
                    }
                    
                    Spacer()
                    
                    Text("Sudah siap membuka Quest?")
                        .font(.system(.title3).bold())
                        .foregroundColor(.black)
                    Text("Ayo scan makananmu dan buktikan!")
                        .font(.system(.title3).bold())
                        .foregroundColor(.black)
                    
                    Spacer()
                    Button(action: {
                        self.showScanPage = true
                    }){
                        Text("Scan")
                            .font(.system(.title).bold())
                            .foregroundColor(CustomColor.white)
                    }
                    .frame(width: geo.size.width, height: 85)
                    .background(Corners(color: CustomColor.primary, tl: 20, tt: 20, bl: 40, bt: 40))
                    
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.bottom)
        }
        NavigationLink(destination: ScanpageView(questItem: questItem), isActive: self.$showScanPage){
        }
    }
}

struct ItemClue: View {
    var clue: String
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(CustomColor.primary)
            
            Text(clue)
                .padding(.leading, 10)
                .font(.system(.body))
                .foregroundColor(.black)
        }
        .padding(EdgeInsets(top: 20, leading: 25, bottom: 20, trailing: 25))
    }
}

//struct ItemClue_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemClue()
//    }
//}

//struct DetailQuestView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailQuestView(questItem: QuestData().questData[0].questItem)
//    }
//}
