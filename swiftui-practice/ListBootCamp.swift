//
//  ListBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 11/01/2024.
//

import SwiftUI

struct ListBootCamp: View {
    
    @State var monthlyBudgets = ["House Rent", "Electricity Bill", "Collage Fees", "Monthly EMI", "Mobile/Internet Bill","Grocery"]
    @State var weeklyBudgets = ["Grocery", "Medical", "Weekend Feast"]
    @State var dailyExpense = ["Transport Charge","Grocery","Snakcs"]
    
    @State var showAlert = false
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(monthlyBudgets.indices, id: \.self) { index in
                        Text(monthlyBudgets[index])
                    }
                    .onDelete(perform: deleteList)
                    .onMove(perform: moveLists)
                } header: {
                    HStack {
                        Text("Monthly")
                            .font(.body)
                        Image(systemName: "flame.fill")
                            .font(.body)
                            .foregroundColor(.teal)
                    }
                }
                
                Section {
                    ForEach(weeklyBudgets.indices, id: \.self) { index in
                        Text(weeklyBudgets[index])
                    }
                    .onDelete { indexSet in
                        weeklyBudgets.remove(atOffsets: indexSet)
                    }
                } header: {
                    HStack {
                        Text("Weekly")
                            .font(.body)
                        Image(systemName: "flame.fill")
                            .font(.body)
                            .foregroundColor(.orange)
                    }
                }
                
                Section {
                    ForEach(dailyExpense.indices, id: \.self) { index in
                        Text(dailyExpense[index])
                    }
                    .onDelete { indexSet in
                        dailyExpense.remove(atOffsets: indexSet)
                    }
                } header: {
                    HStack {
                        Text("Weekly")
                            .font(.body)
                        Image(systemName: "flame.fill")
                            .font(.body)
                            .foregroundColor(.indigo)
                    }
                }
                .listStyle(.grouped)
            }
            .navigationTitle("Group List")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
        }
    }
    
    var addButton: some View {
        
        Button("Add") {
            showAlert.toggle()
        }
        .alert(isPresented: $showAlert) {
            getAlert {
                monthlyBudgets.append("Hospital Bill")
            }
        }
    }
    
    func deleteList(indexset: IndexSet) {
        monthlyBudgets.remove(atOffsets: indexset)
    }
    
    func moveLists(indices: IndexSet, newOffset: Int) {
        monthlyBudgets.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func getAlert(completion: @escaping (()->Void)) -> Alert {
        return Alert(
            title: Text("Warning"),
            message: Text("Are you sure want to change list ?"),
            primaryButton: .default(Text("Yes"), action: completion),
            secondaryButton: .cancel())
    }
}

struct ListBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootCamp()
    }
}
