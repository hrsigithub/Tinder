//
//  ContentView.swift
//  Tinder
//
//  Created by Hiroshi.Nakai on 2022/03/23.
//

import SwiftUI

struct HomeView: View {
    
    
    
    private var frameWidth: CGFloat{
        UIScreen.main.bounds.width
    }
    
    var body: some View {
        
        VStack {
            
            TopView()
            
            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(.blue)
            
            
            BotomView()
            
        }
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

//github
//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
