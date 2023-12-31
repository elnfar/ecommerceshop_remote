//
//  Constant.swift
//  ecommerceshop
//
//  Created by e-side on 02.08.23.
//

import SwiftUI


let players: [Player] = Bundle.main.decode("player.json")
let categories:[Category] = Bundle.main.decode("category.json")
let products:[Product] = Bundle.main.decode("product.json")
let colorBackground: Color = Color("ColorBackground")
let colorGray:Color = Color(UIColor.systemGray4)


let columnSpacing:CGFloat = 10
let rowSpacing:CGFloat = 10
var gridLayout:[GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
