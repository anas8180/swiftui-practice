//
//  ShapesBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct ShapesBootCamp: View {
    var body: some View {
        Circle()
//            .fill(.red)
//            .foregroundColor(.white)
//            .stroke(Color.red, style: StrokeStyle(lineWidth: 1.0, lineCap: .butt, dash: [10]))
            .trim(from: 0.0, to: 0.8)
            .stroke(Color.blue, lineWidth: 6.0)
            .frame(width: 40,height: 40)

    }
}

struct ShapesBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootCamp()
    }
}
