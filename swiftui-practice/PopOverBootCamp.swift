//
//  PopOverBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct PopOverBootCamp: View {
    @State var showPop = false
    var body: some View {
        
        ZStack {
            VStack {
                Button {
                    showPop.toggle()
                } label: {
                    Text("Show Popver")
                        .foregroundColor(.black)
                        .padding()
                        .background(
                            Capsule()
                                .stroke(Color.black, lineWidth: 1)
                        )
                }
        }
            // METHOD --- 1
//            .sheet(isPresented: $showPop) {
//                MyPopUpView()
//            }
//
            // METHOD --- 2
            
//            ZStack {
//                if showPop {
//                    MyPopUpView(showPop: $showPop)
//                        .transition(.move(edge: .bottom))
//                        .animation(.easeInOut)
//                }
//            }
//            .zIndex(2.0)
            
            // METHOD --- 3
            
            MyPopUpView(showPop: $showPop)
                .offset(y: showPop ? 0 : UIScreen.main.bounds.height)
                .animation(.spring())
        }
    }
}

struct PopOverBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PopOverBootCamp()
    }
}

struct MyPopUpView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var showPop: Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            LinearGradient(colors: [Color.black, Color.white], startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.bottom)
            
            Button {
                presentationMode.wrappedValue.dismiss()
                showPop.toggle()
            } label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding()
            }

        }
    }
}
