//
//  SignInUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-04.
//

import SwiftUI

struct SignUpUIView: View {
    @Binding var currentShowingView: String
    @Binding var isAuthenticated: Bool

    @State private var user = User()
    @State private var showPassword = false

        var body: some View {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Hi There, Welcome!").font(.largeTitle).bold().foregroundColor(.black)
                        Spacer()
                    }.padding().padding(.top)
                    
                    Spacer()
                    
                    HStack {
                        Image(systemName: "textformat")
                        TextField("First Name", text: $user.firstName)
                        
                        Spacer()
                        
                        if !user.firstName.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "textformat")
                        TextField("Last Name", text: $user.lastName)
                        
                        Spacer()
                        
                        if !user.lastName.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "location")
                        TextField("Location", text: $user.location)
                        
                        Spacer()
                        
                        if !user.location.isEmpty {
                            Image(systemName: "checkmark")
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    
                    HStack {
                        Image(systemName: "mail")
                        TextField("Email", text: $user.email)
                        
                        Spacer()
                        
                        if !user.email.isEmpty {
                            Image(systemName: user.email.isValidEmail() ? "checkmark" : "xmark")
                                .fontWeight(.bold)
                                .foregroundColor(user.email.isValidEmail() ? .green : .red)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    HStack {
                        Image(systemName: "lock")
                        if showPassword {
                            TextField("Password", text: $user.password)
                        } else {
                            SecureField("Password", text: $user.password)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            showPassword.toggle()
                        }) {
                            Image(systemName: showPassword ? "eye.slash" : "eye")
                                .foregroundColor(.blue)
                                .padding(.trailing, 8)
                        }
                    }
                    .foregroundColor(.black)
                    .padding()
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                    .foregroundColor(Color("kPrimary"))
                    .padding()
                    
                    if !user.password.isValidPassword() && !user.password.isEmpty {
                        Text("Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one digit, and one special character.")
                            .foregroundColor(.red)
                            .padding(.horizontal)
                    }
                    
                    Button(action: {
                        withAnimation {
                            self.currentShowingView = "login"
                        }
                    }) {
                        Text("Already have an account? Log in").foregroundColor(.blue)
                    }
                    
                    Spacer()
                    Spacer()
                    
                    Button {
                       // add sign up logic here
                        print("First Name: \(user.firstName)")
                            print("Last Name: \(user.lastName)")
                            print("Location: \(user.location)")
                            print("Email: \(user.email)")
                        
                       isAuthenticated = true
                        
                    } label: {
                        Text("Sign up").foregroundColor(.blue)
                            .font(.title3).bold().frame(maxWidth: .infinity).padding().background(RoundedRectangle(cornerRadius: 10).fill(Color("kSecondary"))).padding(.horizontal)
                    }
                }
            }
        }
}
