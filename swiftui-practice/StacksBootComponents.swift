//
//  StacksBootComponents.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct StacksBootComponents: View {
    var body: some View {
        ZStack(alignment: .center) {
            RoundedRectangle(cornerRadius: 5)
                .fill(.orange)
                .frame(width: 200, height: 50)
            
            HStack(alignment: .center) {
                Image(systemName: "heart.fill")
                    .font(.system(size: 25))
                    .foregroundColor(.white)
                
                VStack(alignment: .leading) {
                    Text("Source")
                        .font(.caption)
                    Text("Al Mamazar Park")
                        .font(.body)
                }
            }
        }
    }
}

struct StacksBootComponents_Previews: PreviewProvider {
    static var previews: some View {
        StacksBootComponents()
    }
}
