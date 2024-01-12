//
//  ColorBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct ColorBootCamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 20.0)
            .fill(Color.red)
            .shadow(color: Color.red, radius: 5, x: 0.0, y: 0.0)
            .frame(width: 300,height: 150)
    }
}

struct ColorBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorBootCamp()
    }
}
