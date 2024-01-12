//
//  PickerBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct PickerBootCamp: View {
    
    @State var onlineStatus = false
    @State var selectedYear = "1"
    @State var backGroundColor: Color = .green
    @State var selectedDate: Date = Date()
    @State var stepperValue: Int = 10
    
    let startDate = Calendar.current.date(from: DateComponents(year: 2019)) ?? Date()
    let endDate = Calendar.current.date(from: DateComponents(year: 2025)) ?? Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .full
        return formatter
    }
    
    var body: some View {
        ZStack {
            
            backGroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Status: ")
                        .font(.title)
                    Text(onlineStatus ? "Online" : "Offline")
                        .font(.title)
                        .foregroundColor(onlineStatus ? .white : .gray)
                }
                Toggle("Change Status", isOn: $onlineStatus)
                    .toggleStyle(SwitchToggleStyle(tint: .orange))
                    .foregroundColor(.primary)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color.white)
                    )
                    .padding()
                
                HStack {
                    Text("Total Experience: ")
                        .font(.title)
                    Text(selectedYear)
                        .font(.title)
                        .foregroundColor(onlineStatus ? .green : .white)
                }
                
                Picker(
                    "Select Experience",
                    selection: $selectedYear,
                    content: {
                        ForEach(1..<11) { index in
                            Text("\(index)")
                                .tag("\(index)")
                        }
                    }
                )
                .pickerStyle(.automatic)
                
                ColorPicker(
                    "Select a color",
                    selection: $backGroundColor,
                    supportsOpacity: true)
                .padding()
                .background(.white)
                .cornerRadius(8)
                .padding()
                
                VStack {
                    Text("Selected Date")
                        .font(.title)
                    Text(dateFormatter.string(from: selectedDate))
                        .foregroundColor(.white)
                }
                
                DatePicker(
                    "Select date",
                    selection: $selectedDate,
                    in: startDate...endDate,
                    displayedComponents: [.date]
                )
                .padding()
                .background(.white)
                .cornerRadius(8)
                .padding()
                
//                Stepper("Steps: \(stepperValue)", value: $stepperValue)
//                    .padding()
//                    .background(.white)
//                    .cornerRadius(8)
//                    .padding()
                
                Stepper("Stepper Value: \(stepperValue)") {
                    changeWidth(value: 10)
                } onDecrement: {
                    changeWidth(value: -10)
                }

                
                RoundedRectangle(cornerRadius: 8)
                    .fill(.yellow)
                    .padding()
                    .frame(width: 100 + CGFloat(stepperValue), height: 100)
                
                
                Spacer()
            }
        }
    }
    
    func changeWidth(value: Int) {
        withAnimation(.easeInOut) {
            stepperValue += value
        }
    }
    
}

struct PickerBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootCamp()
    }
}
