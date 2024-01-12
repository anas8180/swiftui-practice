//
//  PaddingComponents.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct PaddingComponents: View {
    
//    let data: [String] = ["Johan Aksolp", "Yayhya Kahn", "Aero Ikerpl","Johan Aksolp", "Yayhya Kahn", "Aero Ikerpl","Johan Aksolp", "Yayhya Kahn", "Aero Ikerpl"]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack {
                ForEach(0..<20, id: \.self) { index in
                    VStack(alignment: .leading, spacing: 8) {
                        HStack(alignment: .center, spacing: 16) {
                            ImageBootCamp(imageSize: 75, borderColor: .cyan)
                            
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Hello, World!")
                                    .font(.body)
                                
                                Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                                    .font(.caption)
                            }
                        }
                    }
                    .padding()
                    .background(
                        Color.white
                            .cornerRadius(8)
                            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0.0, y: 5.0)
                    )
                    .padding(.vertical,8)
                    .padding(.horizontal)
                }
            }
        }
    }
}

struct PaddingComponents_Previews: PreviewProvider {
    static var previews: some View {
        PaddingComponents()
    }
}
