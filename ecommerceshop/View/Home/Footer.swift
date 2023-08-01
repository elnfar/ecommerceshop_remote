//
//  Footer.swift
//  ecommerceshop
//
//  Created by e-side on 02.08.23.
//

import SwiftUI

struct Footer: View {
    var body: some View {
        
        VStack(alignment:.center, spacing: 10) {
            Text("We offer the most quality based products in market on earth, that you can find!")
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .layoutPriority(2)
            
            Image("logo-lineal")
                .renderingMode(.template)
                .foregroundColor(.gray)
                .layoutPriority(0)
            
            Text("copyright © Echo-LLC\n All rights reserver")
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .font(.footnote)
                .fontWeight(.bold)
                .layoutPriority(1)
        }
        .padding()
        
    }
}

struct Footer_Previews: PreviewProvider {
    static var previews: some View {
        Footer()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
