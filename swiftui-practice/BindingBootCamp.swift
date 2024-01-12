//
//  BindingBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct BindingBootCamp: View {
    
    @State var grdientColors: [Color] = [Color.cyan, Color.orange]
    
    var body: some View {
        ZStack {
            LinearGradient(colors: grdientColors, startPoint: .top, endPoint: .bottom)
            EmployeeDetailsView(parentViewGradientColor: $grdientColors)
        }
        .ignoresSafeArea()
    }
}

struct BindingBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootCamp()
    }
}

struct EmployeeDetailsView: View {
    
    @Binding var parentViewGradientColor: [Color]
    @State var name = "Mohamed Anas"
    @State var mobile = "0586420990"
    @State var changeFlag = false
    @State var buttonTitle = "Update Details"
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.title)
                    Text(mobile)
                        .font(.callout)
                }
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding(.horizontal,16)
                   
            Spacer()
            
            Button {
                didButtonTap()
            } label: {
                Text(buttonTitle)
                    .foregroundColor(.white)
                    .padding(.all,12)
                    .background(
                        Capsule()
                            .fill(Color.red)
                    )
            }
            
            Spacer()
        }
        .padding(.top, 65)
    }
    
    func didButtonTap() {
        if !changeFlag {
            parentViewGradientColor = [Color.blue, Color.white]
            name = "Sadham Hussain"
            mobile = "9566981810"
            buttonTitle = "Revert Changes"
        } else {
            parentViewGradientColor = [Color.cyan, Color.orange]
            name = "Mohamed Anas"
            mobile = "0586420990"
            buttonTitle = "Update Details"
        }
        changeFlag.toggle()
    }
}
