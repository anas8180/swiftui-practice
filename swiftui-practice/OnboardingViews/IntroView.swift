//
//  IntroView.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 12/01/2024.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            RadialGradient(
                colors: [Color.indigo.opacity(0.5), Color.indigo],
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
            .edgesIgnoringSafeArea(.all)
            
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                OnboardView()
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
