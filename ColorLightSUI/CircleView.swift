//
//  CircleView.swift
//  ColorLightSUI
//
//  Created by Руслан Битюков on 21.01.2022.
//

import SwiftUI

struct CircleView: View {
    let color: Color
    var body: some View {
        
        VStack{
            Circle()
                .frame(width: 150, height: 150)
                .overlay(Circle().stroke(color, lineWidth: 5))
                .accessibilityLabel("Label")
        }
    }
}

struct CircleView_Previews: PreviewProvider {
    static var previews: some View {
        CircleView(color: .white)
    }
}

