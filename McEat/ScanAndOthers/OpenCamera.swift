//
//  OpenCamera.swift
//  McEat
//
//  Created by Pieter Yoshua Natanael on 16/05/22.
//

import SwiftUI

struct OpenCamera: View {
    
    @State var username: String = ""
    @State var changeProfileImage = false
    @State var openCameraRoll = false
    @State var imageSelected = UIImage()
  
    
    
    
    var body: some View {
        NavigationView{
            
            VStack{
            
              
            
            ZStack(alignment: .bottomTrailing){
                
                
           
                
                Button(action: {
                    changeProfileImage = true
                    openCameraRoll = true
                        
                    
                }
                       
                       , label: {
                    if changeProfileImage {
                        Image(uiImage: imageSelected)
                            .profileImageMod()
                    } else {
//                        Image("profileImage")
                        Image(systemName: "camera.circle.fill")
                            .profileImageMod()
                    }
                })
                
                
                Image(systemName: "plus")
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .background(Color.black)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    
                
            }.sheet(isPresented: $openCameraRoll) {
                ImagePicker(selectedImage: $imageSelected, sourceType: .camera)
                
                
                
             
                    
                }
                
                
                NavigationLink(destination: YaBenar()) {
                    Text("YA BENAR")
                    
                        .bold()
                        .frame(width: 200, height: 35)
                        .background(.orange)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                }
                NavigationLink(destination: BukanIni()) {
                    Text("BUKAN INI")
                    
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


struct OpenCamera_Previews: PreviewProvider {
    static var previews: some View {
        OpenCamera()
    }
}

