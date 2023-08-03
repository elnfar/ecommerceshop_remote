//
//  CategoryModel.swift
//  ecommerceshop
//
//  Created by e-side on 03.08.23.
//

import Foundation


struct Category:Codable,Identifiable {
    let id: Int
    let name: String
    let image:String
}
