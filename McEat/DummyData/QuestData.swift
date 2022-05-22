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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                        ]
                      
                ),
                Quest(category: "Makanan Khas", questItem:
                        [
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                        ]
                      
                ),
                Quest(category: "Makanan Khas", questItem:
                        [
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                        ]
                      
                ),
                Quest(category: "Makanan Khas", questItem:
                        [
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                            QuestItem(labelML: "roti_buaya", title: "Santan Kental", image: "soto_betawi",
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
                        ]
                      
                )
            ]
        )
    }
}

