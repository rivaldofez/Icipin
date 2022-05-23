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
            
            Badge(title: "Ondel ondel", tagline: "Jakarta Culinary Enthusiast", image: "badge_ondel", isUnlock: true, require: ["korean_garlic", "roti_buaya"], storyHeadline: "Sejarah Ondel Ondel", story: "Ondel-ondel identik dengan simbol Betawi, di mana Ondel-ondel adalah salah satu kesenian terkenal dari Betawi. Ondel-ondel awalnya bernama Barongan, Kata barongan diambil dari kata 'barengan' yang artinya bersama-sama. Karena ondel-ondel biasa diarak oleh masyarakat setempat bersama-sama. Berganti nama menjadi ondel-ondel setelah penyanyi legendari Benyamin merilis lagi berjudul 'Ondel-ondel'.",clue: "Selesaikan dua quest di Jakarta", progress: 0),
            
            Badge(title: "Metromini", tagline: "Angkutan Umum", image: "badge_bis", isUnlock: false, require: ["subway"], storyHeadline: "Cerita Metromini", story: "MetroMini atau yang disingkat TSW adalah salah satu tipe bus di Jakarta yang dikenal dengan warna khas merah-oranye dan biru dengan garis putih ditengah garis. Panggilan bus ini juga menjadi nama perusahaan, PT Metromini, sebagai badan penyedia jasa angkutan kendaraan umum yang mengoperasikannya, dengan kekhususan Jakarta, Indonesia.",clue: "Selesaikan quest transportasi", progress: 0),
            
            Badge(title: "Bajaj", tagline: "Vibes Jadoel", image: "badge_bajaj", isUnlock: false, require: ["gultik", "es_ragusa"], storyHeadline: "Bajaj Masih Ada", story: "Bajaj berasal dari India yang diekspor ke Indonesia terutama ke Jakarta sejak tahun 1970-an. Nama bajaj sendiri sebenarnya merupakan merek salah satu perusahaan otomotif di India, Bajaj Auto. Bajaj beroda tiga, satu di depan dan dua di belakang, dengan bentuk kemudi mirip seperti kemudi sepeda motor daripada kemudi mobil. Untuk di Jakarta, warna bajaj ada dua, yaitu biru dan orange.",clue: "Selesaikan quest jalan sempit", progress: 0),
            
            Badge(title: "Monas", tagline: "Icon Kota Jakarta", image: "badge_monas", isUnlock: false, require: ["roti_buaya"], storyHeadline: "Monumen Nasional Jakarta", story: "Monumen Nasional atau yang disingkat dengan Monas atau Tugu Monas adalah monumen peringatan setinggi 132 meter (433 kaki) yang didirikan untuk mengenang perlawanan dan perjuangan rakyat Indonesia untuk merebut kemerdekaan dari pemerintahan kolonial Hindia Belanda. Pembangunan monumen ini dimulai pada tanggal 17 Agustus 1961 di bawah perintah presiden Soekarno dan dibuka untuk umum pada tanggal 12 Juli 1975. Tugu ini dimahkotai lidah api yang dilapisi lembaran emas yang melambangkan semangat perjuangan yang menyala-nyala dari rakyat Indonesia. Monumen Nasional terletak tepat di tengah Lapangan Medan Merdeka, Jakarta Pusat.",clue: "Selesaikan quest playboy", progress: 0),
        
        ])
    }
}
