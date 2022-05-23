//
//  BadgeData.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 23/05/22.
//

import SwiftUI

class BadgeData {
    var badgeData = [Badge]()
    
    init(){
        badgeData.append(contentsOf: [
            
            Badge(title: "Ondel ondel", tagline: "Jakarta Culinary Enthusiast", image: "badge_ondel", isUnlock: true, require: ["korean_garlic", "roti_buaya"], storyHeadline: "Sejarah Ondel Ondel", story: "Ondel-ondel identik dengan simbol Betawi, di mana Ondel-ondel adalah salah satu kesenian terkenal dari Betawi. Ondel-ondel awalnya bernama Barongan, Kata barongan diambil dari kata 'barengan' yang artinya bersama-sama. Karena ondel-ondel biasa diarak oleh masyarakat setempat bersama-sama. Berganti nama menjadi ondel-ondel setelah penyanyi legendari Benyamin merilis lagi berjudul 'Ondel-ondel'.", progress: 0),
            
            Badge(title: "Ondel ondel", tagline: "Jakarta Culinary Enthusiast", image: "badge_ondel", isUnlock: false, require: ["korean_garlic", "roti_buaya"], storyHeadline: "Sejarah Ondel Ondel", story: "Ondel-ondel identik dengan simbol Betawi, di mana Ondel-ondel adalah salah satu kesenian terkenal dari Betawi. Ondel-ondel awalnya bernama Barongan, Kata barongan diambil dari kata 'barengan' yang artinya bersama-sama. Karena ondel-ondel biasa diarak oleh masyarakat setempat bersama-sama. Berganti nama menjadi ondel-ondel setelah penyanyi legendari Benyamin merilis lagi berjudul 'Ondel-ondel'.", progress: 0),
            
            Badge(title: "Ondel ondel", tagline: "Jakarta Culinary Enthusiast", image: "badge_ondel", isUnlock: false, require: ["soto_betawi", "roti_buaya"], storyHeadline: "Sejarah Ondel Ondel", story: "Ondel-ondel identik dengan simbol Betawi, di mana Ondel-ondel adalah salah satu kesenian terkenal dari Betawi. Ondel-ondel awalnya bernama Barongan, Kata barongan diambil dari kata 'barengan' yang artinya bersama-sama. Karena ondel-ondel biasa diarak oleh masyarakat setempat bersama-sama. Berganti nama menjadi ondel-ondel setelah penyanyi legendari Benyamin merilis lagi berjudul 'Ondel-ondel'.", progress: 0)
        
        ])
    }
}
