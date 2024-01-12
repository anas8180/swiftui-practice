//
//  TransitionBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct TransitionBootCamp: View {
    
    @State var showView = false
    
    var body: some View {
        VStack {
            Button {
                showView.toggle()
            } label: {
                Text("Start Animation")
                    .foregroundColor(.blue)
                    .padding(.all,12)
                    .background(Capsule().stroke(lineWidth: 1))
            }
            
            Spacer()
            
            if showView {
                RoundedRectangle(cornerRadius: 15)
                    .fill(.cyan)
                    .frame(width: .infinity, height: UIScreen.main.bounds.height * 0.3)
                    .transition(
                        .asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut))
                    )
                    .animation(.easeInOut)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct TransitionBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootCamp()
    }
}
