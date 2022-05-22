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
    @State var showSheetLocation: Bool = false
    
    var body: some View {
        ZStack{
            Color.white
            VStack {
                ZStack{
                    HStack {
                        Image(systemName: "xmark")
                            .foregroundColor(CustomColor.white)
                        VStack(alignment:.leading) {
                            Text("Lokasi Kamu")
                                .font(.system(.caption))
                                .foregroundColor(CustomColor.white)
                            Text("Jakarta")
                                .font(.system(.body).bold())
                                .foregroundColor(CustomColor.white)
                        }
                        Button {
                            showSheetLocation = true
                        } label: {
                            Image(systemName: "chevron.down")
                                .foregroundColor(CustomColor.white)
                        }
                        .halfSheet(showSheet: self.$showSheetLocation){
                            ZStack(alignment:.topLeading){
                                Color.white
                                VStack(alignment: .leading) {
                                    Text("Pilih Lokasi")
                                        .font(.system(.title2).bold())
                                    Divider()
                                    HStack() {
                                        Image(systemName: "infinity.circle")
                                            .resizable()
                                            .foregroundColor(CustomColor.gray)
                                            .frame(width: 20, height: 20)
                                        
                                        VStack(alignment: .leading) {
                                            Text("Lokasimu saat ini")
                                                .font(.system(.title3).bold())
                                            Text("Jalan padang panjang No.6c Pasar Manggis Setiabudi Jakarta selatan")
                                                .font(.system(.body))
                                                .foregroundColor(CustomColor.gray)
                                                .padding(.top, 0.5)
                                        }
                                        
                                    }
                                    Divider()
                                }.padding(EdgeInsets(top: 40, leading: 20, bottom: 0, trailing: 20))
                            }
                            .ignoresSafeArea()
                        } onEnd: {
                            print("Dismissed")
                        }
                        Spacer()
                    }.padding(.leading, 20)
                    
                }
                .frame(width: UIScreen.main.bounds.size.width, height: 150)
                .background(RadialCorners(radGrad: RadialGradient(colors: [CustomColor.secondary, CustomColor.primary], center: .center, startRadius: 0, endRadius: 200), tl: 0, tt: 0, bl: 70, bt: 70))
                
                Text("Choose your Quest")
                    .font(.headline.bold())
                    .foregroundColor(.black)
                    .frame(width: 250, height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
                    .padding(.bottom, -40)
                
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
                .clipped()
            }.navigationBarHidden(true)
        }
        .edgesIgnoringSafeArea(.top)
        
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
                            .foregroundColor(CustomColor.white)
                        Spacer()
                    }.padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
                    
                    HStack{
                        Text(titleArr[1])
                            .font(.system(.title2).bold())
                            .foregroundColor(CustomColor.white)
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
    //binding show Variable
    
    func halfSheet<SheetView: View>(showSheet: Binding<Bool>, @ViewBuilder sheetView: @escaping () -> SheetView, onEnd: @escaping ()->()) -> some View{
        
        //using overlay / background because we want use frame from swiftui
        return self
            .background(
                HalfSheetHelper(sheetView: sheetView(), showSheet: showSheet, onEnd: onEnd)
            )
    }
}

struct HalfSheetHelper<SheetView: View> : UIViewControllerRepresentable{
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
            //presenting modal view
            let sheetController = CustomHostingController(rootView: sheetView)
            sheetController.presentationController?.delegate = context.coordinator
            
            uiViewController.present(sheetController, animated: true)
            
        }else{
            //closing view when showsheet toggled again
            uiViewController.dismiss(animated: true)
        }
    }
    
    //on Dismiss
    class Coordinator: NSObject, UISheetPresentationControllerDelegate {
        var parent: HalfSheetHelper
        
        init(parent: HalfSheetHelper) {
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
        //setting presentation controller properties
        
        view.backgroundColor = .clear
        if let presentationController = presentationController as? UISheetPresentationController {
            presentationController.detents = [
                .medium(),
                .large()
                
            ]
            
            //showing grab point
            presentationController.prefersGrabberVisible = true
            presentationController.preferredCornerRadius = 50
        }
    }
}
//struct QuestPageView_Previews: PreviewProvider {
//    static var previews: some View {
//        QuestPageView()
//    }
//}

