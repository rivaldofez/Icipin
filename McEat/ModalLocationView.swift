//
//  ModalLocationView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 17/05/22.
//

import SwiftUI

struct ModalLocationView: View {
    @Binding var isShowing: Bool
    @State private var isDragging = false
    @State private var curHeight: CGFloat = 700
    @State private var searchQueryLocation = ""
    
    let minHeight: CGFloat = 400
    let maxHeight: CGFloat = 700
    
    let startOpacity: Double = 0.4
    let endOpacity: Double = 0.8
    
    var dragPercentage: Double {
        let res = Double((curHeight - minHeight) / (maxHeight - minHeight))
        
        return max(0, min(1, res))
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowing {
                Color.black
                    .opacity(startOpacity + (endOpacity - startOpacity) * dragPercentage)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                
                mainView
                .transition(.move(edge: .bottom))
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut(duration: 0.2), value: isShowing)
    }
    
    var mainView: some View {
        VStack {
            //Handle
            ZStack{
                Capsule()
                    .frame(width: 40, height: 6)
            }
            .frame(height: 40)
            .frame(maxWidth: .infinity)
            .background(Color.white.opacity(0.00001))
            .gesture(dragGesture)
            
            
            ZStack{
                VStack(alignment: .leading){
                    Text("Pilih Lokasi")
                    
                    
                    TextField(
                        "Cari Lokasi",
                        text: self.$searchQueryLocation
                    )
                    .onSubmit {
                        print("onsubmit")
                    }.padding(10)
                    .border(.secondary)
                    
                    Divider()
                    
                    HStack{
                        Image(systemName: "pin.circle")
                            .resizable()
                            .frame(width: 30, height:30)
                            .foregroundColor(.gray)
                        VStack(alignment: .leading){
                            Text("Lokasimu saat ini")
                            Text("Jakarta")
                        }
                    }
                    
                    Spacer()
                }
                .padding(.horizontal, 30)
            }
            .frame(maxHeight: .infinity)
            .padding(.bottom, 35)
        }
        .frame(height: curHeight)
        .frame(maxWidth: .infinity)
        .background(
            //Rounded Corner on Top
            ZStack {
                RoundedRectangle(cornerRadius: 30)
                Rectangle()
                    .frame(height: curHeight/2)
            }
                .foregroundColor(.white)
        )
        .animation(isDragging ? nil : .easeInOut(duration: 0.2), value: isDragging)
        .onDisappear{
            curHeight = minHeight
        }

    }
    
    @State private var prevDragTranslation = CGSize.zero
    
    var dragGesture: some Gesture {
        DragGesture(minimumDistance: 0, coordinateSpace: .global)
            .onChanged{val in
                if !isDragging {
                    isDragging = true
                }
                
                let dragAmount = val.translation.height - prevDragTranslation.height
                
                if curHeight > maxHeight {
                    curHeight -= dragAmount / 6
                }else if(curHeight < minHeight/2){
                    isShowing = false
                }else{
                    curHeight -= dragAmount
                }
                prevDragTranslation = val.translation
            }
            .onEnded{val in
                prevDragTranslation = .zero
                isDragging = false
                if(curHeight > maxHeight) {
                    curHeight = maxHeight
                }else if curHeight < minHeight {
                    curHeight = minHeight
                }
            }
    }
}

struct ModalLocationView_Previews: PreviewProvider {
    static var previews: some View {
        ModalLocationView(isShowing: .constant(true))
    }
}
