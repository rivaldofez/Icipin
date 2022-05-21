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
    
    var body: some View {
        GeometryReader { geo in
            VStack {
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
                Button(action: {}){
                    Text("Scan")
                        .font(.system(.title).bold())
                        .foregroundColor(.white)
                }
                .frame(width: geo.size.width, height: 85)
                .background(Corners(color: .red, tl: 20, tt: 20, bl: 40, bt: 40))
            }
            .navigationTitle("Clue")
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct ItemClue: View {
    var clue: String
    
    var body: some View {
        HStack{
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(.red)
            
            Text(clue)
                .padding(.leading, 10)
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
