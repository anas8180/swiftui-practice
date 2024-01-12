//
//  BackgroundOverlaysBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct BackgroundOverlaysBootCamp: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 25))
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.indigo]), startPoint: .leading, endPoint: .trailing)
                    )
                    .frame(width: 60,height: 60)
                    .shadow(color: Color.indigo.opacity(0.5), radius: 10, x: 0.0, y: 7.0)
                    .overlay(
                        Circle()
                            .fill(.red)
                            .frame(width: 20, height: 20)
                            .overlay(
                                Text("20")
                                    .font(.caption2)
                                    .foregroundColor(.white)
                            )
                        ,alignment: .bottomTrailing
                    )
            )
            
    }
}

struct BackgroundOverlaysBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlaysBootCamp()
    }
}
