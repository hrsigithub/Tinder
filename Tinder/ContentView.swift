//
//  ContentView.swift
//  Tinder
//
//  Created by Hiroshi.Nakai on 2022/03/23.
//

import SwiftUI

struct ContentView: View {

    private var frameWidth: CGFloat{
        UIScreen.main.bounds.width
    }

    var body: some View {
        
        
        
        VStack {
            HStack {

                Button {
//                    <#code#>
                } label: {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40
                               , height: 40, alignment: .center)
                        .foregroundColor(.red)
                }
                .frame(width: frameWidth / 4 - 20)
                .padding(.leading, 30)

                Button {
//                    <#code#>
                } label: {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40
                               , height: 40, alignment: .center)
                        .foregroundColor(.yellow)

                }
                .frame(width: frameWidth / 4)

                Button {
//                    <#code#>
                } label: {
                    Image(systemName: "bubble.left.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40
                               , height: 40, alignment: .center)
                        .foregroundColor(.orange)

                }
                .frame(width: frameWidth / 4)

                Button {
//                    <#code#>
                } label: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40
                               , height: 40, alignment: .center)
                        .foregroundColor(.pink)
                }
                .frame(width: frameWidth / 4 - 20)
                .padding(.trailing, 30)

                
            }
            .padding()
            .frame(width: frameWidth)
//            .background(.red)

            
            
            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 600)
                .background(.blue)

            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth)
                .background(.green)

            
        }
        
       
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
