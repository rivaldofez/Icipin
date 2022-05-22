//
//  VerifiedQuestView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

struct VerifiedQuestView: View {
    //Gesture Properties
    @State var offset: CGFloat = 0
    @State var lastOffset: CGFloat = 0
    @GestureState var gestureOffset: CGFloat = 0
    @State var isMidDrag: Bool = false
    
    
    var body: some View {
        ZStack(alignment: isMidDrag ? .top : .center) {
            VStack {
                Text("CONGRATULATIONS")
                    .font(.system(.title2).bold())
                    .foregroundColor(.black)
                Text("Kamu telah berhasi; menjawab Questnya")
                    .font(.system(.body))
                    .foregroundColor(.black)
                Image("soto_betawi")
                    .resizable()
                    .frame(width: 200, height: 200)
                Text("Soto Betawi")
                    .font(.system(.title2).bold())
            }.padding(.top, isMidDrag ? 20 : 0)
            
            GeometryReader { geo -> AnyView in
                //getting height for drag gesture
                
                let height = geo.frame(in: .global).height
                
                return AnyView(
                    ZStack {
                        CustomColor.primary
                            .clipShape(CustomShapeRounded(corners: [.topLeft,.topRight], radius: 30))
                        
                        VStack {
                            Capsule()
                                .fill(Color.white)
                                .frame(width: 80, height: 4)
                                .padding(.top)
                            
                            Text("Story Food")
                                .font(.system(.title2).bold())
                                .foregroundColor(.white)
                            
                        }
                        .padding(.horizontal)
                        .frame(maxHeight: .infinity, alignment: .top)
                        
                    }
                        .offset(y: height - 100)
                        .offset(y: -offset > 0 ? -offset <= (height - 100) ? offset : -(height - 100) : 0)
                        .gesture(DragGesture().updating(self.$gestureOffset, body: { value, out, _ in
                            out = value.translation.height
                            onChange()
                        }).onEnded({value in
                            let maxHeight = height - 100
                            withAnimation{
                                //Logic condition for moving states
                                //up down or min
                                
                                if -offset > 100 && -offset < maxHeight / 2{
                                    offset = -(maxHeight / 3)
                                    isMidDrag = true
                                    
                                }else if -offset > maxHeight / 2 {
                                    offset = -maxHeight
                                    isMidDrag = true
                                }else{
                                    offset = 0
                                    isMidDrag = false
                                }
                            }
                            
                            //storing last offset
                            //so that the gesture can continue form the last position
                            
                            lastOffset = offset
                        })
                                
                                )
                 )
            }.ignoresSafeArea(.all, edges: .bottom)
        }
    }
    
    func onChange(){
        DispatchQueue.main.async {
            self.offset = gestureOffset + lastOffset
        }
    }
    
    func getBlurRadius() -> CGFloat {
        let progress = -offset / (UIScreen.main.bounds.height - 100)
        
        return progress * 30
    }
}

struct VerifiedQuestView_Previews: PreviewProvider {
    static var previews: some View {
        VerifiedQuestView()
    }
}

struct BlurView: UIViewRepresentable {
    var style: UIBlurEffect.Style
    
    
    func makeUIView(context: Context) -> some UIVisualEffectView {
        let view = UIVisualEffectView(effect: UIBlurEffect(style: style))
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
