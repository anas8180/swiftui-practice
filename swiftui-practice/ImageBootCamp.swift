//
//  ImageBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct ImageBootCamp: View {
    
    let imageSize: CGFloat
    let borderColor: Color
    
    var body: some View {
        Image("profile_picture")
//            .resizable()
//            .renderingMode(.template)
//            .foregroundColor(Color.blue)
//            .frame(width: 80, height: 80)
            .resizable()
            .scaledToFill()
            .frame(width: imageSize,height: imageSize)
            .clipped()
            .clipShape(Circle())
            .overlay(Circle().stroke(borderColor, lineWidth: 2.5))
            .shadow(radius: 5)
    }
}

struct ImageBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootCamp(imageSize: 100, borderColor: .orange)
    }
}
