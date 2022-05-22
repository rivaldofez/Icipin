//
//  QuestData.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


class LabelData {
    var labelML = [String]()
    
    init(){
        labelML.append(contentsOf: [
            "asinan_betawi",
            "bir_pletok",
            "croffle",
            "es_campur_betawi",
            "es_ragusa",
            "es_selendang",
            "gultik",
            "haka_dimsum",
            "kerak_telor",
            "korean_garlic",
            "odeng",
            "oyster",
            "roti_buaya",
            "sate_taichan",
            "semur_jengkol",
            "soto_betawi",
            "subway"
        ])
    }
}

class QuestData {
    var questData = [Quest]()
    
    init(){
        questData.append(contentsOf:
            [
                Quest(category: "Makanan Khas", questItem:
                        [
                            QuestItem(labelML: "soto_betawi", title: "Santan Kental", image: "soto_betawi",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Masuk ke jenis soto",
                                        "memiliki rasa yang sangat gurih",
                                        "menggunakan santan yang kental",
                                        "Isiannya terdiri atas daging sapi, jeroan, organ sapi, seperti mata sapi, torpedo, dan hati"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "kerak_telor", title: "Wajan Dibalik", image: "kerak_telor",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Cara memasaknya sangat unik yaitu dengan membalikkan  wajan kebawah",
                                        "Berbahan dasar beras ketan dan telur bebek",
                                        "Biasa dijual ditempat wisata",
                                        "Menjadi ikon kuliner jakarta."
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "asinan_betawi", title: "Kerupuk Mie", image: "asinan_betawi",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Makanan yang dibuat dengan cara pengacaran",
                                        "Berbahan dasar sayuran",
                                        "Kuah bumbu kacang yang memiliki rasa asam pedas dan manis",
                                        "Dilengkapi dengan kerupuk mie kuning yang khas"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "roti_buaya", title: "Roti Playboy", image: "roti_buaya",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Sebuah roti berbentuk unik",
                                        "Biasa disajikan saat pernikahan adat betawi",
                                        "Melambangkan kesetiaan",
                                        "Memiliki filosofi kehidupan baru dalam prosesi pernikahan"
                                      ],
                                      isUnlock: false)
                        ]
                      
                ),
                Quest(category: "Minuman Recommended", questItem:
                        [
                            QuestItem(labelML: "bir_pletok", title: "Bir Halal", image: "bir_pletok",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Minuman khas jakarta",
                                        "Nama minuman cukup mengecoh karena sering dikira minuman berakohol",
                                        "Dibuat menggunakan berbagai macam rempah,",
                                        "Bisa disajikan dingin atau hangat"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "es_ragusa", title: "Es Colloseum", image: "es_ragusa",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Keluarga eskrim",
                                        "Didirikan oleh dua orang italia sejak tahun 1932",
                                        "Resepnya turun-temurun sampai sekarang",
                                        "Kedai berada di jalan veteran jakarta"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "es_selendang", title: "Selendang Dingin", image: "es_selendang",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Keluarga es",
                                        "Minuman khas jakarta",
                                        "Namanya terinspirasi dari bentuknya yang panjang dan memiliki 3 warna seperti selendang",
                                        "3 warnanya mewakili 3 etnis masyarakat Jakarta yaitu Merah (Tionghoa), Kuning (Melayu) dan Hijau (Arab)"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "es_campur_betawi", title: "Es Dangdut", image: "es_campur_betawi",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Keluarga Es",
                                        "Cara membuatnya dijadikan sebagai nama makanan",
                                        "Cara membuatnya unik yaitu digoyang-goyangkan diatas gerobak",
                                        "Biasa dijual dengan berkeliling menggunakan gerobak"
                                      ],
                                      isUnlock: false)
                        ]
                      
                ),
                Quest(category: "Makanan Viral", questItem:
                        [
                            QuestItem(labelML: "croffle", title: "Roti Geprek", image: "croffle",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Makanan yang namanya berasal dari gabungan dua makanan  berbeda",
                                        "Sempat viral dan banyak mendapatkan review positif dari para foodies",
                                        "Bahan dasarnya adalah roti yang berasal dari Austria namun populer di Perancis",
                                        "Menggunakan cetakan khusus untuk memasaknya"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "korean_garlic", title: "Roti Korea", image: "korean_garlic",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Roti yang berasal dari Korea selatan",
                                        "Cita rasa gurih dan creamy",
                                        "Menggunakan bahan dasar keju dan garlic",
                                        "Renyah diluar, lembut didalam"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "subway", title: "Sandwich Kereta", image: "subway",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Banyak muncul di drama korea",
                                        "Dulu pernah buka di indonesia namun kurang laku",
                                        "Memiliki franchise terbesar di dunia",
                                        "Sangat terkenal dibidang franchise sandwich"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "odeng", title: "Fishcake Tusuk", image: "odeng",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Lebih dikenal sebagai fishcake",
                                        "Rasanya gurih dan memiliki tekstur yang lembut",
                                        "Penyajiannya dilipat menggunakan tusuk sate lengkap dengan kuahnya",
                                        "Sempat viral di tiktok dan dijual di minimarket jepang"
                                      ],
                                      isUnlock: false)
                        ]
                ),
                Quest(category: "Makanan Recommended", questItem:
                        [
                            QuestItem(labelML: "sate_taichan", title: "Sate Putih", image: "sate_taichan",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Keluarga sate",
                                        "Tidak pakai bumbu kacang, hanya menggunakan jeruk nipis",
                                        "Garam dan sambal matah sebagai bumbunya",
                                        "Biasa dijual di daerah senayan"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "gultik", title: "Makanan Tikungan", image: "gultik",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Makanan ini terkenal sebagai makanan malam yang murah",
                                        "Berbahan dasar gulai daging",
                                        "Disajikan dengan porsi yang kecil",
                                        "Biasa dijual didaerah blok M"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "oyster", title: "Kerang Mr.Bean", image: "oyster",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Keluarga Kerang",
                                        "Disajikan mentah dan fresh",
                                        "Biasanya dimakan dengan cara langsung tanpa dikunyah terlebih dahulu",
                                        "Dijual disebuah kedai di PIK (Pantai Indah Kapuk)"
                                      ],
                                      isUnlock: false),
                            QuestItem(labelML: "roti_buaya", title: "Siomay Tiongkok", image: "soto_betawi",
                                      color: [ Color(red: 25/255, green: 235/255, blue: 205/255),
                                               Color(red: 0/255, green: 146/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Makanan khas yang bermula dari Tiongkok",
                                        "Memiliki jenis yang sangat banyak serta yang terkenal adalah siomay dan bakpau",
                                        "Jajanan pinggir jalan yang populer",
                                        "Dijual di sebuah kedai di daerah Melawai, Jakarta selatan"
                                      ],
                                      isUnlock: false)
                        ]
                )
            ]
        )
    }
}

