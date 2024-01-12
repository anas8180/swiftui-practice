//
//  GradientBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct GradientBootCamp: View {
    var body: some View {
        LinearGradient(
            gradient: Gradient(
                colors: [Color.blue, Color.white]),
            startPoint: .bottom,
            endPoint: .top
        )
        .ignoresSafeArea()
//        RadialGradient(
//            gradient: Gradient(
//                colors: [Color.blue, Color.white]),
//            center: .center, startRadius: 20,
//            endRadius: 400
//        )
//        .ignoresSafeArea()
    }
}

struct GradientBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootCamp()
    }
}
