//
//  HomepageView.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 14/05/22.
//

import SwiftUI


struct HomepageView: View {
    var body: some View {
        NavigationView{
            VStack {
                ZStack(){
                    Image("jakarta")
                        .resizable()
                        .frame(width: .infinity, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 50))
                        .shadow(color: .gray, radius: 10, x: 0, y: 1)
                    HStack{
                        Image(systemName: "xmark")
                        VStack{
                            HStack {
                                Text("Lokasi Kamu")
                                Image(systemName: "chevron.down")
                            }
                            Text("Jakarta")
                        }
                    }
                }
                Text("Choose your Quest")
                    .frame(width: 300, height: 60)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .offset(x: 0, y: -40)
                Spacer()
            }.ignoresSafeArea()
        }
        .navigationViewStyle(.stack)
    }
}

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
