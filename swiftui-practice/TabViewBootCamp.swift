//
//  TabViewBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 12/01/2024.
//

import SwiftUI

struct TabViewBootCamp: View {
    
    @State var selectedTab = 0
    
    let icons = ["house.fill", "heart.fill", "globe", "person.fill"]
    
    var body: some View {
        
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .padding(60)
            }
       }
        .background(
            RadialGradient(colors: [Color.white, Color.purple], center: .center, startRadius: 0, endRadius: 350)
        )
       .tabViewStyle(PageTabViewStyle())
        
        /*TabView(selection: $selectedTab) {
            Text("Home")
                .tag(0)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Browse")
                .tag(1)
                .tabItem {
                    Image(systemName: "globe")
                    Text("Browse")
                }
            
            Text("Profile")
                .tag(2)
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }*/

    }
}

struct TabViewBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TabViewBootCamp()
    }
}
