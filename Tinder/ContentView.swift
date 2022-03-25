//
//  ContentView.swift
//  Tinder
//
//  Created by Hiroshi.Nakai on 2022/03/23.
//

import SwiftUI

struct ContentView: View {
    
    enum SelectedItem {
        case tinder, good, comment, profile
    }
    
    @State var selectedItem: SelectedItem = .good

    private var frameWidth: CGFloat{
        UIScreen.main.bounds.width
    }

    var body: some View {
        
        VStack {
            HStack {

                Button(action: {
                    selectedItem = .tinder
                }, label: {
                    Image(systemName: "flame.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30
                               , height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .tinder ? .red : .gray)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.leading, 30)

                Button(action: {
                    selectedItem = .good
                }, label: {
                    Image(systemName: "suit.diamond.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30
                               , height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .good ? .red : .gray)

                })
                .frame(width: frameWidth / 4)

                Button(action: {
                    selectedItem = .comment
                }, label: {
                    Image(systemName: "bubble.left.fill")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30
                               , height: 30, alignment: .center)
                        .foregroundColor(selectedItem == .comment ? .orange : .gray)

                })
                .frame(width: frameWidth / 4)

                Button(action: {
                    selectedItem = .profile
                }, label: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 40
                               , height: 40, alignment: .center)
                        .foregroundColor(selectedItem == .profile ? .pink : .gray)
                })
                .frame(width: frameWidth / 4 - 20)
                .padding(.trailing, 30)

                
            }
            .padding()
            .frame(width: frameWidth)
//            .background(.red)

            
            
            
            Text("Hello, world!")
                .padding()
                .frame(width: frameWidth, height: 400)
                .background(.blue)

            HStack(spacing: 20) {
                ButtonButtonView(imageName: "goforward", imageSize: 20, backgroudSize: 50)
                ButtonButtonView(imageName: "xmark", imageSize: 25, backgroudSize: 60)
                ButtonButtonView(imageName: "star", imageSize: 20, backgroudSize: 50)
                ButtonButtonView(imageName: "arrow.up.message.fill", imageSize: 25, backgroudSize: 60)
                ButtonButtonView(imageName: "airtag", imageSize: 20, backgroudSize: 50)
            }
            .padding()
            .frame(width: frameWidth)
//            .background(.red)
            

            
        }
        
       
        
    }
}

struct ButtonButtonView : View {
    
    var imageName: String
    var imageSize: CGFloat
    var backgroudSize: CGFloat
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .frame(width: backgroudSize
                       , height: backgroudSize)
                .cornerRadius(backgroudSize)
                .shadow(radius: 10)
            
            Button(action: {
            }, label: {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageSize
                           , height: imageSize, alignment: .center)
                
            })

        }

    
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}

//github
//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
