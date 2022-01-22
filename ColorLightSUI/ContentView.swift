//
//  ContentView.swift
//  ColorLightSUI
//
//  Created by Руслан Битюков on 20.01.2022.
//

import SwiftUI

struct ContentView: View {
    
    enum ColorLig {
        case red
        case yellow
        case green
    }
    
    @State var colorLig: ColorLig = .red
    @State var nameButton = "Start"
    @State var nextNameButton = "Next"
    
    @State var redOpacity = 0.3
    @State var yellowOpacity = 0.3
    @State var greenOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea() // - игнорирует сейф эрия
            VStack{
                CircleView(color: .white)
                    .foregroundColor(.red)
                    .opacity(redOpacity)
                CircleView(color: .white)
                    .foregroundColor(.yellow)
                    .opacity(yellowOpacity)
                CircleView(color: .white)
                    .foregroundColor(.green)
                    .opacity(greenOpacity) // - alpha
                
                Spacer() //- разьезжают элементы
                
                Button(nameButton) {
                    nameButton = nextNameButton
                    switch colorLig {
                    case .red:
                        redOpacity = 1.0
                        yellowOpacity = 0.3
                        greenOpacity = 0.3

                        colorLig = .yellow

                    case .yellow:
                        redOpacity = 0.3
                        yellowOpacity = 1.0
                        greenOpacity = 0.3

                        colorLig = .green

                    case .green:
                        redOpacity = 0.3
                        yellowOpacity = 0.3
                        greenOpacity = 1.0

                        colorLig = .red
                    }
                }
                .frame(width: 200.0, height: 50.0)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(30)
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
