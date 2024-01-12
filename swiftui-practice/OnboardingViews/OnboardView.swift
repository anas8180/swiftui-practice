//
//  OnboardView.swift
//  swiftui-practice
//
//  Created by Mohamed Anas on 12/01/2024.
//

import SwiftUI

struct OnboardView: View {
    
    @State var onboardingState: Int = 0
    @State var name = ""
    @State var age: Double = 20
    @State var gender = ""
    
    var body: some View {
        ZStack {
            // Content
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                case 1:
                    addNameSection
                case 2:
                    addAgeSection
                case 3:
                    addGenderSection
                default:
                    RoundedRectangle(cornerRadius: 25)
                        .foregroundColor(.green)
                }
            }
            
            
            // Bottom Button
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
        }
    }
    
}

struct OnboardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardView()
            .background(.purple)
    }
}

// MARK: - COMPONENTS

extension OnboardView {
    private var bottomButton: some View {
        Text((onboardingState == 0) ? "SIGN UP" : (onboardingState == 3) ? "FINISH" : "NEXT")
            .font(.headline)
            .foregroundColor(.indigo)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(8)
            .onTapGesture {
                handleSignUpPressed()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .scaledToFit()
                .foregroundColor(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .fill(Color.white)
                        .frame(height: 3)
                        .offset(y: 5),
                    alignment: .bottom
                )
            Text("This is #1 app for finding your match online! you can provide your interest and match with other profile showing in this app.keep using the app for finding your best match.")
                .foregroundColor(.white)
                .fontWeight(.medium)
            
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    private var addNameSection: some View {
        VStack {
            Spacer()
            Text("What's your name?")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.largeTitle)
            
            TextField("Your name here....", text: $name)
                .frame(height: 55)
                .padding(.horizontal)
                .background(Color.white)
                .cornerRadius(8)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 12) {
            Spacer()
            Text("What's your age?")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.largeTitle)
            
            Text("\(String(format: "%.0f", age))")
                .foregroundColor(.white)
                .font(.title)
            Slider(value: $age, in: 18...60, step: 1)
                .accentColor(.white)
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addGenderSection: some View {
        VStack {
            Spacer()
            Text("What's your gender?")
                .foregroundColor(.white)
                .fontWeight(.semibold)
                .font(.largeTitle)
            
            Picker(gender, selection: $gender) {
                Text("Male").tag("Male")
                Text("Female").tag("Female")
            }
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(Color.white)
            .cornerRadius(8)
            
            
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}

// MARK: - FUNCTIONAL
extension OnboardView {
    func handleSignUpPressed() {
        
        if (onboardingState == 3) {
            // Sign Up
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
        }
    }
}
