//
//  Navigation.swift
//  ecommerceshop
//
//  Created by e-side on 02.08.23.
//

import SwiftUI

struct Navigation: View {
    
    @State private var isAnimated:Bool = false
    
    var body: some View {
        
        HStack {
            
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })
            
            
            Spacer()
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0,y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })
            Spacer()
            
            Button(action: {}, label: {
                
                ZStack {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.black)
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14,height: 14,alignment: .center)
                        .offset(x: 13,y: -10)
                }
            })
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
