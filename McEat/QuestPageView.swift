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
                    }.navigationBarHidden(true)
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

extension View {
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheetView: @escaping () -> SheetView, onEnd: @escaping ()->()) -> some View {
        
        return self
            .background(
                HalfsheetHelper(sheetView: sheetView(), showSheet: showSheet, onEnd: onEnd)
            )
    }
}

struct HalfSheetHelper<SheetView: View>: UIViewControllerRepresentable {
    var sheetView: SheetView
    @Binding var showSheet: Bool
    var onEnd: ()->()
    
    let controller = UIViewController()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> some UIViewController {
        controller.view.backgroundColor = .clear
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        if showSheet {
            let sheetController = CustomHostingController(rootView: sheetView)
            sheetController.presentationController?.delegate = context.coordinator
            
            uiViewController.present(sheetController, animated: true)
        }else{
            uiViewController.dismiss(animated: true)
        }
    }
    
    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        var parent: HalfSheetHelper
        
        init(parent: HalfSheetHelper){
            self.parent = parent
        }
        
        func presentationControllerDidDismiss(_ presentationController: UIPresentationController) {
            parent.showSheet = false
            parent.onEnd()
        }
    }
}

class CustomHostingController<Content: View>: UIHostingController<Content> {
    override func viewDidLoad() {
        view.backgroundColor = .clear
        
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .medium(),
                .large()
            ]
            
            presentationController.prefersGrabberVisible = true
            presentationController.preferredCornerRadius = 40
        }
    }
}

//struct QuestPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestPageView()
//    }
//}

