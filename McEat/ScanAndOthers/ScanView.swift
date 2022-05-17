//
//  ScanView.swift
//  McEat
//
//  Created by Pieter Yoshua Natanael on 16/05/22.
//

import SwiftUI

struct ScanView: View {
    var body: some View {
        
//        NavigationView{
            
            
            VStack {
                
                
                Text ("Clue")
                    .bold()
                
                Text("Deskripsi clue pertama")
                    .bold()
                    .frame(width: 400, height: 100)
                    .background(.orange)
                
                Text("Deskripsi clue kedua")
                    .bold()
                    .frame(width: 400, height: 100)
                    .background(.orange)
                
                Text("Deskripsi clue ketiga")
                    .bold()
                    .frame(width: 400, height: 100)
                    .background(.orange)
                
                Text("Deskripsi clue keempat")
                    .bold()
                    .frame(width: 400, height: 100)
                    .background(.orange)
                
                Text("Sudah siap membuka Quest? Ayo buka makanan mu dan buktikan")
                    .bold()
                    .font(.title3)
                    .frame(width: 300, height: 100)
                    
                
                NavigationLink(destination: OpenCamera()) {
                    Text("SCAN")
                        .bold()
                        .frame(width: 200, height: 35)
                        .background(.blue)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    
                }
//                Text("SCAN")
//                    .frame(width: 400, height: 100)
//                    .background(.blue)
//                    .foregroundColor(.white)
//                    .ignoresSafeArea()
                
//                NavigationLink(destination: OpenCamera)
//                    Text("SCAN")
//                        .bold()
//                        .frame(width: 200, height: 35)
//                        .background(.white)
//                        .foregroundColor(.black)
//                        .cornerRadius(15)
                    
        }
            
        
        
       
    }
}

struct ScanView_Previews: PreviewProvider {
    static var previews: some View {
        ScanView()
    }
}
