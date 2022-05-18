//
//  YaBenar.swift
//  McEat
//
//  Created by Pieter Yoshua Natanael on 16/05/22.
//

import SwiftUI

struct YaBenar: View {
    var body: some View {
        NavigationView{
            
            ZStack{
                Color.white
                            .ignoresSafeArea()
                
                VStack{
                    
                    Text("Congratulations!")
                        .bold()
                        .font(.title)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                        .padding(-100)
                    
                    Text("Kamu telah berhasil menjawab questnya")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                    
                    
                    Image("soto")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        
                    
                        .frame(width: 300, height: 200)
                    
                    
                    Text("Food Story")
                        .bold()
                        .font(.title2)
                        .foregroundColor(.black)
                        .frame(width: 300, height: 200)
                    
                    
                    
                  
                    
                
                    
                
                }
                
                
                
            }
        }
       
    }
}

struct YaBenar_Previews: PreviewProvider {
    static var previews: some View {
         YaBenar()
    }
}
