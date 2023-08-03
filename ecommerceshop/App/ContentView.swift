//
//  ContentView.swift
//  ecommerceshop
//
//  Created by e-side on 02.08.23.
//

import SwiftUI

struct ContentView: View {
        
    //    MARK: - PROPERTIES
    
    var body: some View {
        
        ZStack {
            VStack(spacing:0) {
                Navigation()
                    .padding(.horizontal,15)
                    .padding(.bottom)
                    .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5,x: 0,y: 5)
                
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing:0) {
                        FeaturedTabView()
                            .padding(.vertical,20)
                            .frame(height: UIScreen.main.bounds.width)
                        
                        CategoryGridView()
                        
                        TitleView(title: "Helmets")
                        
                        
                        LazyVGrid(columns:gridLayout, spacing: 15, content: {
                            ForEach(products) {
                                product in ProductItemView(product: product)
                            }
                        })
                        .padding(15)
                        
                        //
                        //
                        
                        
                        Footer()
                            .padding(.horizontal)
                        
                        
                        
                    }
                })
                  
                
               
            }
            .background(colorBackground.ignoresSafeArea(.all,edges: .all))
        }
        .ignoresSafeArea(.all, edges: .top)
        
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12 Pro")
    }
}
