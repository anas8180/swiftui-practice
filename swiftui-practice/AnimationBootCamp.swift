//
//  AnimationBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct AnimationBootCamp: View {
    
    @State var isAnimated = false
    
    var body: some View {
        VStack {
            Button {
                isAnimated.toggle()
            } label: {
                Text("Start Animation")
                    .foregroundColor(.blue)
                    .padding(.all,12)
                    .background(Capsule().stroke(lineWidth: 1))
            }

//            RoundedRectangle(cornerRadius: isAnimated ? 50 : 5)
//                .fill(isAnimated ? Color.indigo : Color.cyan)
//                .frame(width: isAnimated ? 100 : 200, height: isAnimated ? 100 : 200)
//                .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
//                .offset(y: isAnimated ? 300 : 0)
//                .animation(Animation.default, value: isAnimated)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.cyan)
                .frame(width: isAnimated ? .infinity : 60, height: 100)
                .padding(.horizontal,16)
                .animation(Animation.easeIn(duration: 5).repeatCount(2, autoreverses: true), value: isAnimated)
            
            Spacer()

        }
    }
}

struct AnimationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootCamp()
    }
}
