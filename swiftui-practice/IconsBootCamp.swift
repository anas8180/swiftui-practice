//
//  IconsBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct IconsBootCamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
//            .font(.largeTitle)
            .resizable()
            .scaledToFit()
            .foregroundColor(.blue)
            .frame(width: 200, height: 200)
    }
}

struct IconsBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBootCamp()
    }
}
