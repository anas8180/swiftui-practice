//
//  TextFieldBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct TextFieldBootCamp: View {
    
    @State var textFieldText = ""
    @State var employeeList: [String] = []
    
    var body: some View {
        VStack(spacing: 12) {
            Text("Employee Name")
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Type something.....", text: $textFieldText)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(8)
            
            Button {
                employeeList.append(textFieldText)
            } label: {
                Text("Submit")
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(
                        Capsule()
                            .fill(isValidInput() ? .cyan : .gray)
                    )
            }
            .disabled(!isValidInput())
            
            List {
                ForEach(employeeList, id: \.self) { employee in
                    Text(employee)
                }
            }
            .listStyle(.plain)
        }
        .padding()
    }
    
    func isValidInput() -> Bool {
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
}

struct TextFieldBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootCamp()
    }
}
