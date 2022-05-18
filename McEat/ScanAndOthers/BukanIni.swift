//
//  BukanIni.swift
//  McEat
//
//  Created by Pieter Yoshua Natanael on 16/05/22.
//


import SwiftUI

struct BukanIni: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Color.white
                            .ignoresSafeArea()
                
                VStack{
                    
                    Text("Maaf, bukan ini yang kami maksud")
                        .bold()
                        .font(.title)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                    
                    
                    Image("sad")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    
                        .frame(width: 300, height: 200)
                    
                    
                    Text("Ayo berkuliner lagi untuk membuka questnya")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                    
                    
                    
                    NavigationLink(destination: ScanView()) {
                        Text("Retry")
                            .bold()
                            .frame(width: 200, height: 35)
                            .background(.orange)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            .padding(4)

                            
                    }
                    
                    NavigationLink(destination: ScanView()) {
                        Text("Coba quest lain")
                            .bold()
                            .frame(width: 200, height: 35)
                            .background(.blue)
                            .foregroundColor(.white)
                            .cornerRadius(15)
                            
                    }
                    
                
                    
                
                }
                
                
                
            }
        }
       
    }
}

struct BukanIni_Previews: PreviewProvider {
    static var previews: some View {
         BukanIni()
    }
}

