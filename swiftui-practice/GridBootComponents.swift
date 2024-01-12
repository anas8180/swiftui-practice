//
//  GridBootComponents.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 10/01/2024.
//

import SwiftUI

struct GridBootComponents: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.gray)
                .frame(height: 350)
            
            LazyVGrid(columns: columns, alignment: .center, spacing: 8, pinnedViews: []) {
                
                Section {
                    ForEach(0..<18) { index in
                        Rectangle()
                            .frame(height: 100)
                    }
                } header: {
                   Rectangle()
                        .fill(.cyan)
                        .frame(height: 45)
                        .overlay(
                            Text("Section 1")
                        )
                }
                
                Section {
                    ForEach(0..<18) { index in
                        Rectangle()
                            .frame(height: 100)
                    }
                } header: {
                   Rectangle()
                        .fill(.orange)
                        .frame(height: 45)
                        .overlay(
                            Text("Section 2")
                        )
                }

            }
        }
        .padding(.horizontal,0)
        .edgesIgnoringSafeArea(.all)
    }
}

struct GridBootComponents_Previews: PreviewProvider {
    static var previews: some View {
        GridBootComponents()
    }
}
