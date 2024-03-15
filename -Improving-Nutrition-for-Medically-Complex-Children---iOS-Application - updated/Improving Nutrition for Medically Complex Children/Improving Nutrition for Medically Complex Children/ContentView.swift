//
//  ContentView.swift
//  Improving Nutrition for Medically Complex Children
//
//  Created by Gill on 2024-03-01.
//

import SwiftUI

struct ContentView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var shouldNavigate = false // State to control navigation
    
    var body: some View {
        NavigationView {
            VStack {
                // Your logo here
                Image("logo2")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 240, height: 240)
                    .padding(.bottom, 0)
                
                Text("Sign In")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(.bottom, 40)
                    
                
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.secondarySystemBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)
                
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.secondarySystemBackground)
                    .cornerRadius(5.0)
                    .padding(.bottom, 20)

                Button("Sign In") {
                    // Here we change the state to trigger navigation
                    self.shouldNavigate = true
                }
                .foregroundColor(Color.white)
                .frame(width: 200, height: 50)
                .background(Color.red)
                .cornerRadius(8.0)
                
                Spacer()

                HStack {
                    Button("Forgot Password?", action: {
                        // Forgot password action
                    })
                    .foregroundColor(Color.gray)
                    
                    Spacer()
                    
                    Button("Sign Up", action: {
                        // Sign up action
                    })
                    .foregroundColor(Color.gray)
                }
                .padding(.bottom, 20)
                
                // Invisible NavigationLink that will trigger the navigation when `shouldNavigate` is true
                NavigationLink(destination: HomeView(), isActive: $shouldNavigate) {
                    EmptyView()
                }
            }
            .padding()
        }
        .navigationBarHidden(true) // To hide the navigation bar
    }
}



#Preview {
    ContentView()
}

