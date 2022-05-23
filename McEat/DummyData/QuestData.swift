//
//  QuestData.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI

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
                                      unlockQuest: UnlockQuest(title: "Soto Betawi", image: "pc_soto_betawi" ,story: "Soto Betawi merupakan soto yang khas dari daerah DKI Jakarta. Seperti halnya Soto Madura dan Soto Sulung, soto Betawi juga menggunakan jeroan. Selain jeroan, sering kali organ-organ lain juga disertakan, seperti mata, terpedo, dan juga hati. Daging sapi juga menjadi bahan campuran dalam soto Betawi.")
                                     ),
                            QuestItem(labelML: "kerak_telor", title: "Wajan Dibalik", image: "kerak_telor",
                                      color: [ Color(red: 255/255, green: 119/255, blue: 29/255),
                                               Color(red: 213/255, green: 34/255, blue: 0/255)
                                             ],
                                      clue: [
                                        "Cara memasaknya sangat unik yaitu dengan membalikkan  wajan kebawah",
                                        "Berbahan dasar beras ketan dan telur bebek",
                                        "Biasa dijual ditempat wisata",
                                        "Menjadi ikon kuliner jakarta."
                                      ],
                                      unlockQuest: UnlockQuest(title: "Kerak Telor", image: "pc_kerak_telor", story: "Kerak telur adalah makanan asli daerah Jakarta, dengan bahan-bahan beras ketan putih, telur ayam atau bebek, ebi yang disangrai kering ditambah bawang merah goreng, lalu diberi bumbu yang dihaluskan berupa kelapa sangrai, cabai merah, kencur, jahe, merica butiran, garam dan gula pasir.")
                                     ),
                            QuestItem(labelML: "asinan_betawi", title: "Kerupuk Mie", image: "asinan_betawi",
                                      color: [ Color(red: 16/255, green: 196/255, blue: 245/255),
                                               Color(red: 0/255, green: 108/255, blue: 161/255)
                                             ],
                                      clue: [
                                        "Makanan yang dibuat dengan cara pengacaran",
                                        "Berbahan dasar sayuran",
                                        "Kuah bumbu kacang yang memiliki rasa asam pedas dan manis",
                                        "Dilengkapi dengan kerupuk mie kuning yang khas"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Kerak Telor", image: "pc_asinan_betawi", story: "Asinan khas Betawi aslinya hanya menggunakan bahan berupa sayur mayur, bukan buah seperti asinan Bogor. Asinan betawi juga dilengkapi dengan bumbu kacang dan kerupuk mie kuning. Asinan nikmat disantap pada siang hari. Kesegaran sayuran dan kuah bumbu kacangnya yang asam-pedas-manis-gurih terasa cetar di lidah.")
                                     ),
                            QuestItem(labelML: "roti_buaya", title: "Roti Playboy", image: "roti_buaya",
                                      color: [ Color(red: 103/255, green: 103/255, blue: 0/255),
                                               Color(red: 157/255, green: 63/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Sebuah roti berbentuk unik",
                                        "Biasa disajikan saat pernikahan adat betawi",
                                        "Melambangkan kesetiaan",
                                        "Memiliki filosofi kehidupan baru dalam prosesi pernikahan"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Roti Buaya", image: "pc_roti_buaya", story: "Roti buaya adalah hidangan Betawi berupa roti manis berbentuk buaya. Roti buaya senantiasa hadir dalam upacara pernikahan dan kenduri tradisional Betawi.")
                                    )
                        ]
                      
                ),
                Quest(category: "Minuman Recommended", questItem:
                        [
                            QuestItem(labelML: "bir_pletok", title: "Bir Halal", image: "bir_pletok",
                                      color: [ Color(red: 255/255, green: 206/255, blue: 72/255),
                                               Color(red: 148/255, green: 108/255, blue: 109/255)
                                             ],
                                      clue: [
                                        "Minuman khas jakarta",
                                        "Nama minuman cukup mengecoh karena sering dikira minuman berakohol",
                                        "Dibuat menggunakan berbagai macam rempah,",
                                        "Bisa disajikan dingin atau hangat"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Bir Pletok", image: "pc_bir_pletok", story: "Bir pletok merupakan minuman khas masyarakat Betawi yang sudah populer sejak zaman kolonial. Dibuat dari godokan 13 macam rempah yakni, jahe, jahe merah, sereh, kunyit, kayu secang, kayu manis, lada hitam, daun pandan, daun jeruk, biji pala, kapulaga, kembang lawang, serta cengkeh, ditambah gula dan garam.")
                                     ),
                            QuestItem(labelML: "es_ragusa", title: "Es Colloseum", image: "es_ragusa",
                                      color: [ Color(red: 254/255, green: 128/255, blue: 255/255),
                                               Color(red: 187/255, green: 0/255, blue: 124/255)
                                             ],
                                      clue: [
                                        "Keluarga eskrim",
                                        "Didirikan oleh dua orang italia sejak tahun 1932",
                                        "Resepnya turun-temurun sampai sekarang",
                                        "Kedai berada di jalan veteran jakarta"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Es Ragusa", image: "pc_es_ragusa", story: "Ragusa Italian Ice Cream merupakan salah satu toko es krim legendaris dan tertua di Jakarta yang berdiri sejak 1932. Ragusa Italian Ice Cream didirkan oleh Ragusa bersaudara, yaitu orang asli Italia bernama Luigi Ragusa dan Vincenzo.  Toko es krim Ragusa mulanya hanya ada di Bandung. Namun, Ragusa kerap membuka lapak es krim melalui acara tahunan di Jakarta.")
                                     ),
                            QuestItem(labelML: "es_selendang", title: "Selendang Dingin", image: "es_selendang",
                                      color: [ Color(red: 255/255, green: 135/255, blue: 135/255),
                                               Color(red: 205/255, green: 0/255, blue: 0/255)
                                             ],
                                      clue: [
                                        "Keluarga es",
                                        "Minuman khas jakarta",
                                        "Namanya terinspirasi dari bentuknya yang panjang dan memiliki 3 warna seperti selendang",
                                        "3 warnanya mewakili 3 etnis masyarakat Jakarta yaitu Merah (Tionghoa), Kuning (Melayu) dan Hijau (Arab)"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Kerak Telor", image: "pc_es_selendang", story: "Es selendang mayang adalah salah satu minuman tradisional Indonesia asal Jakarta. Minuman ini sekarang jarang ditemukan karena dikalangan masyarakat Betawi sendiri minuman ini dianggap minuman kuno. Di acara-acara tertentu seperti Lebaran Betawi, minuman ini disajikan dan sering disertai dengan label 'minuman Betawi jadul'. Selain menyegarkan, minuman ini dapat mengurangi rasa lapar karena dibuat dengan bahan dasar tepung beras. Beberapa penjual di kota tua membuat minuman ini dengan bahan dasar tepung hunkwedengan alasan lebih mudah dan efisien.")
                                     ),
                            QuestItem(labelML: "es_campur_betawi", title: "Es Dangdut", image: "es_campur_betawi",
                                      color: [ Color(red: 131/255, green: 169/255, blue: 0/255),
                                               Color(red: 51/255, green: 133/255, blue: 0/255)
                                             ],
                                      clue: [
                                        "Keluarga Es",
                                        "Cara membuatnya dijadikan sebagai nama makanan",
                                        "Cara membuatnya unik yaitu digoyang-goyangkan diatas gerobak",
                                        "Biasa dijual dengan berkeliling menggunakan gerobak"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Es Goyang", image: "pc_es_goyang", story: "Es yang memiliki dominan rasa santan atau variasi rasa coklat, kacang hijau dan strawberi dengan harga yang ekonomis, menjadikan es goyang favorit jajanan es di era 1980 hingga 1990-an. Lantaran cara membuatnya harus digoyang. Es goyang biasa dijual secara keliling menggunakan gerobak.")
                                     )
                        ]
                      
                ),
                Quest(category: "Makanan Viral", questItem:
                        [
                            QuestItem(labelML: "croffle", title: "Roti Geprek", image: "croffle",
                                      color: [ Color(red: 224/255, green: 151/255, blue: 89/255),
                                               Color(red: 209/255, green: 0/255, blue: 0/255)
                                             ],
                                      clue: [
                                        "Makanan yang namanya berasal dari gabungan dua makanan  berbeda",
                                        "Sempat viral dan banyak mendapatkan review positif dari para foodies",
                                        "Bahan dasarnya adalah roti yang berasal dari Austria namun populer di Perancis",
                                        "Menggunakan cetakan khusus untuk memasaknya"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Croffle", image: "pc_croffle", story: "Croffle pada dasarnya adalah perkawinan antara croissant dan waffle. Lapisan kue yang terkelupas mengembang dan mengisi cetakan waffle dan mendapatkan tepi luar yang renyah dan sempurna. Croffle dibuat oleh koki pastry Irlandia dan akhirnya menjadi sangat populer di Korea dan juga Indonesia.")
                                     ),
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
                                      unlockQuest: UnlockQuest(title: "Korean Garlic Bread", image: "pc_korean_garlic", story: "Street food Korea Selatan ini merupakan roti dengan topping krim keju yang disiram saus bawang putih. Sedikit berbeda, di sini aku memadukannya dengan topping cheese bechamel. Tentunya cocok dengan tekstur roti yang crunchy dan lembut. Makanan ini sempat viral di Indonesia beberapa waktu lalu.")
                                     ),
                            QuestItem(labelML: "subway", title: "Sandwich Kereta", image: "subway",
                                      color: [ Color(red: 255/255, green: 227/255, blue: 5/255),
                                               Color(red: 170/255, green: 128/255, blue: 0/255)
                                             ],
                                      clue: [
                                        "Banyak muncul di drama korea",
                                        "Dulu pernah buka di indonesia namun kurang laku",
                                        "Memiliki franchise terbesar di dunia",
                                        "Sangat terkenal dibidang franchise sandwich"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Subway", image: "pc_subway", story: "Subway adalah waralaba restoran cepat saji multi-nasional Amerika yang terutama menjual sandwich, wraps, salad, dan minuman kapal selam. Subway didirikan oleh Fred DeLuca yang berusia 17 tahun dan dibiayai oleh Peter Buck pada tahun 1965 sebagai Kapal Selam Super Pete di Bridgeport, Connecticut. Subway sempat membuka restorannya di Indonesia pada tahun 1986, namun sempat tutup karena krisis moneter di tahun 1998. Kemudian baru-baru ini subway kembali membuka restorannya di Indonesia dan langsung viral karena digandrungi kawula muda Indonesia.")
                                     ),
                            QuestItem(labelML: "odeng", title: "Fishcake Tusuk", image: "odeng",
                                      color: [ Color(red: 128/255, green: 203/255, blue: 168/255),
                                               Color(red: 21/255, green: 126/255, blue: 77/255)
                                             ],
                                      clue: [
                                        "Lebih dikenal sebagai fishcake",
                                        "Rasanya gurih dan memiliki tekstur yang lembut",
                                        "Penyajiannya dilipat menggunakan tusuk sate lengkap dengan kuahnya",
                                        "Sempat viral di tiktok dan dijual di minimarket jepang"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Odeng", image: "pc_odeng", story: "Odeng adalah camilan khas Korea, yang merupakan sate daging ikan, dimasak dengan kuah kaldu. Bentuknya seperti sate usus yang dililit pada sebuah tusuk sate. Odeng sempat viral di Indonesia karena pengaruh drama korea yang begitu kuat dikalangan remaja Indonesia.")
                                     )
                        ]
                ),
                Quest(category: "Makanan Recommended", questItem:
                        [
                            QuestItem(labelML: "sate_taichan", title: "Sate Putih", image: "sate_taichan",
                                      color: [ Color(red: 99/255, green: 194/255, blue: 255/255),
                                               Color(red: 0/255, green: 62/255, blue: 205/255)
                                             ],
                                      clue: [
                                        "Keluarga sate",
                                        "Tidak pakai bumbu kacang, hanya menggunakan jeruk nipis",
                                        "Garam dan sambal matah sebagai bumbunya",
                                        "Biasa dijual di daerah senayan"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Sate Taichan", image: "pc_sate_taichan", story: "Sate taichan adalah sebuah varian sate yang berisi daging ayam yang dibakar tanpa baluran bumbu kacang atau kecap seperti sate pada umumnya. Sate ini hanya disajikan dengan sambal dan perasan jeruk nipis, sementara daging sate untuk sate taichan lazimnya berwarna putih polos dan hanya dibumbui garam, jeruk nipis, dan sedikit cabai. Sate ini dijual pada malam hari, lazimnya sate-sate pada umumnya.")
                                     
                                     ),
                            QuestItem(labelML: "gultik", title: "Makanan Tikungan", image: "gultik",
                                      color: [ Color(red: 22/255, green: 194/255, blue: 230/255),
                                               Color(red: 0/255, green: 129/255, blue: 143/255)
                                             ],
                                      clue: [
                                        "Makanan ini terkenal sebagai makanan malam yang murah",
                                        "Berbahan dasar gulai daging",
                                        "Disajikan dengan porsi yang kecil",
                                        "Biasa dijual didaerah blok M"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Gultik", image: "pc_gultik", story: "Gultik merupakan singkatan dari gulai tikungan. Dinamakan gulai tikungan karena banyak pedagang gulai yang mangkal di tikungan jalan tersebut. Ada sekitar 15 pedagang gulai di kawasan belakang Blok M Plaza tersebut. Beberapa dari mereka sudah berjualan sejak puluhan tahun lalu. Rata-rata rasa dari gulai yang mereka jajakan pun tidak jauh berbeda.")
                                     ),
                            QuestItem(labelML: "oyster", title: "Kerang Mr.Bean", image: "oyster",
                                      color: [ Color(red: 255/255, green: 110/255, blue: 148/255),
                                               Color(red: 203/255, green: 0/255, blue: 141/255)
                                             ],
                                      clue: [
                                        "Keluarga Kerang",
                                        "Disajikan mentah dan fresh",
                                        "Biasanya dimakan dengan cara langsung tanpa dikunyah terlebih dahulu",
                                        "Dijual disebuah kedai di PIK (Pantai Indah Kapuk)"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Oyster", image: "pc_oyster", story: "Oyster atau disebut juga dengan tiram ialah moluska bivalvia yang hidup di perairan pantai beriklim sedang dan hangat.  Oyster merupakan tiram laut yang harganya termasuk mahal dibanding kerang yang biasa ditemui di pasaran.  Selain rasanya yang enak dan kaya manfaat, ukuran oyster juga mempengaruhi mahalnya harga oyster, khususnya di Indonesia.")
                                     ),
                            QuestItem(labelML: "haka_dimsum", title: "Siomay Tiongkok", image: "haka_dimsum",
                                      color: [ Color(red: 255/255, green: 186/255, blue: 138/255),
                                               Color(red: 182/255, green: 91/255, blue: 7/255)
                                             ],
                                      clue: [
                                        "Makanan khas yang bermula dari Tiongkok",
                                        "Memiliki jenis yang sangat banyak serta yang terkenal adalah siomay dan bakpau",
                                        "Jajanan pinggir jalan yang populer",
                                        "Dijual di sebuah kedai di daerah Melawai, Jakarta selatan"
                                      ],
                                      unlockQuest: UnlockQuest(title: "Dimsum", image: "pc_haka_dimsum", story: "Dimsum adalah makanan ringan yang jadi bagian penting dari kuliner Tiongkok. Jenisnya sangat beragam, karena semua kue dan makanan pembuka bisa dikategorikan sebagai dimsum. Walaupun begitu, dimsum yang dikenal di negara-negara non-China biasanya lebih terbatas.")
                                     )
                        ]
                )
            ]
        )
    }
}

