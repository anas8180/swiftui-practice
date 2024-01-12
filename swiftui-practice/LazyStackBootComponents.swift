//
//  LazyStackBootComponents.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct LazyStackBootComponents: View {
    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(0..<50) { index in
                    ScrollView(.horizontal) {
                        LazyHStack {
                            ForEach(0..<10) { index in
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(.white)
                                    .frame(width: 200, height: 200)
                                    .shadow(color: Color.black.opacity(0.3), radius: 5)
                                    .padding(.vertical,8)
                                    .padding(.horizontal,8)
                            }
                        }
                    }
                }
            }
        }
    }
}

struct LazyStackBootComponents_Previews: PreviewProvider {
    static var previews: some View {
        LazyStackBootComponents()
    }
}
