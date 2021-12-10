//
//  Pirate.swift
//  finalProject
//
//  Created by aa on 2021/6/18.
//  Copyright © 2021 tku-student. All rights reserved.
//

import Foundation

import  SwiftUI

struct  Pirate: Identifiable {
    let imageName: String
    let name:String
    let position:String
    let age:String
    let money:String
    
    let id = UUID()
}

let members = [
    Pirate(imageName: "lufy", name: "Monkey D Luffy", position: "船長",age: "19",money: "1,500,000,000"),
    Pirate(imageName: "zolo", name: "Roronoa Zoro", position: "副船長",age: "21",money: "320,000,000"),
    Pirate(imageName: "nami", name: "Nami", position: "航海士",age: "20",money: "66,000,000"),
    Pirate(imageName: "usopu", name: "Usopp", position: "狙擊手",age:"19",money: "200,000,000"),
    Pirate(imageName: "saji", name: "Sanji", position: "廚師",age: "21",money: "333,000,000"),
    Pirate(imageName: "chopo", name: "Tony Tony Chopper", position: "醫生",age:"17",money: "100"),
    Pirate(imageName: "lopin", name: "Nico Robin", position: "考古學家",age: "30",money: "130,000,000"),
    Pirate(imageName: "franky", name: "Franky(Cutty Flam)", position: "船工",age: "36",money: "94,000,000"),
    Pirate(imageName: "buluk", name: "Brook", position: "音樂家",age: "90",money: "83,000,000"),
    Pirate(imageName: "jinbe", name: "Jimbei", position: "掌舵手",age: "unknow",money: "438,000,000")
]




