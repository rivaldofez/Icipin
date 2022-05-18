//
//  ProfileImageMod.swift
//  McEat
//
//  Created by Pieter Yoshua Natanael on 16/05/22.
//

import Foundation


import SwiftUI

extension Image {

    func profileImageMod() -> some View {
        self
            .resizable()
            
            .scaledToFill()
            .background(.white)
            .foregroundColor(.black)
            .aspectRatio(contentMode: .fill)
            .frame(width: 200, height: 200)
            .clipShape(Circle())
//            .clipShape(RoundedRectangle(cornerRadius: 55))
    }

}
