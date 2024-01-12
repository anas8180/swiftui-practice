//
//  ViewModelBootCamp.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 12/01/2024.
//

import SwiftUI

struct Fallowers: Identifiable {
    var id: String = UUID().uuidString
    let followerName: String
    let username: String
    let fallowerCount: Int
    let isVerified: Bool
}

class FallowerViewModel: ObservableObject {
    
    @Published var fallowers: [Fallowers] = []
    
    init() {
        getData()
    }
    
    func getData() {
        fallowers = [
            Fallowers(followerName: "Umar Mukar", username: "@umar2020", fallowerCount: 200, isVerified: false),
            Fallowers(followerName: "Rani Kajn", username: "@ranikhan_0493", fallowerCount: 120, isVerified: true),
            Fallowers(followerName: "Arsalan Faizl", username: "@faizla_arsl_202", fallowerCount: 50, isVerified: true),
            Fallowers(followerName: "Trish Karish", username: "@Ktish_029", fallowerCount: 1000, isVerified: false),
            Fallowers(followerName: "Nayana Trara", username: "@nayan_wkik", fallowerCount: 5959, isVerified: true),
            Fallowers(followerName: "Tajahuddin Rahsidi", username: "@rahsihi_tria_7584", fallowerCount: 30202, isVerified: true)
        ]
    }
    
    func deleteFallowers(indexSet: IndexSet?, element: Fallowers?) {
        if let indexSet = indexSet {
            fallowers.remove(atOffsets: indexSet)
        } else if let element = element {
            guard let index = fallowers.firstIndex(where: {$0.id == element.id}) else { return }
            fallowers.remove(at: index)
        }
    }
}

struct ViewModelBootCamp: View {
    
    @StateObject var viewModel = FallowerViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.fallowers) { element in
                    NavigationLink {
                        FallowerDetailScreen(fallower: element)
                    } label: {
                        HStack {
                            Circle()
                                .frame(width: 60, height: 60)
                            
                            VStack(alignment: .leading) {
                                Text(element.followerName)
                                Text(element.username)
                                    .font(.footnote)
                                    .fontWeight(.light)
                            }
                            
                            Spacer()
                            
                            HStack {
                                if element.isVerified {
                                    Image(systemName: "checkmark.seal.fill")
                                        .foregroundColor(.blue)
                                }
                                
                                VStack {
                                    Text("\(element.fallowerCount)")
                                    Text("Fallowers")
                                        .font(.footnote)
                                }
                            }
                        }
                    }
                }
                .onDelete { indexSet in
                    viewModel.deleteFallowers(indexSet: indexSet, element: nil)
                }
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Instagram Fallowers")
        }
        .environmentObject(viewModel)
    }
}

struct FallowerDetailScreen: View {
    
    var fallower: Fallowers
    
    @EnvironmentObject var viewModel: FallowerViewModel
  
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView {
            VStack {
                Circle()
                    .frame(width: .infinity, height: 200)
                    .padding(.top,16)
                
                HStack {
                    VStack(alignment: .leading) {
                        HStack {
                            Text(fallower.followerName)
                                .font(.title)
                            if fallower.isVerified {
                                Image(systemName: "checkmark.seal.fill")
                                    .foregroundColor(.blue)
                            }
                        }
                        Text(fallower.username)
                            .font(.body)
                            .fontWeight(.light)
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .center) {
                        Text("\(fallower.fallowerCount)")
                        Text("Fallowers")
                    }
                }
                .padding()
                
                Text("Delete Fallower")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(8)
                    .onTapGesture {
                        viewModel.deleteFallowers(indexSet: nil, element: fallower)
                        presentationMode.wrappedValue.dismiss()
                    }

            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
    
}

struct ViewModelBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootCamp()
    }
}
