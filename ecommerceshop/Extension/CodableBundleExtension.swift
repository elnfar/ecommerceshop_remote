//
//  CodableBundleExtension.swift
//  ecommerceshop
//
//  Created by e-side on 02.08.23.
//

import Foundation

extension Bundle{
    func decode<T:Codable>(_ file:String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load")
        }
        
        let decoder = JSONDecoder()
        
        
        guard let decodedData = try? decoder.decode(T.self, from:data) else {
            fatalError("Failed to decode")
        }
        
        return decodedData
        
    }
}
