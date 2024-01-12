//
//  NavigationBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct NavigationBootCamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(0..<20) { inded in
                    NavigationLink(destination: SecondScreen()) {
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
                    .buttonStyle(PlainButtonStyle())
                }
            }
            .navigationTitle("Employer Profiles")
            .navigationBarItems(
                leading:
                    HStack {
                        NavigationLink {
                            SecondScreen()
                        } label: {
                            Image(systemName: "person.fill")
                                .accentColor(.black)
                        }
                        
                        NavigationLink {
                            SecondScreen()
                        } label: {
                            Image(systemName: "flame.fill")
                                .accentColor(.black)
                        }

                    },
                trailing:
                    HStack {
                        Image(systemName: "gear")
                    }
            )
        }
    }
}

struct SecondScreen: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(systemName: "house.fill")
                .font(.title)
            Text("Agrini Apartment")
                .font(.title)
            Text("Periyar Bus Stand, Madurai")
        }
        .foregroundColor(.white)
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(.purple)
        )
        .contextMenu {
            Button {
                
            } label: {
                Label("Share", systemImage: "person.fill")
            }
            
            Button {
                
            } label: {
                Label("Report", systemImage: "flame.fill")
            }
            
            Button {
                
            } label: {
                Text("Copy Address")
            }
        }
    }
}

struct NavigationBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        //NavigationBootCamp()
        SecondScreen()
    }
}
