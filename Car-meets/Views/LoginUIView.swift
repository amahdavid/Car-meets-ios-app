//
//  LoginUIView.swift
//  Car-meets
//
//  Created by David Chika Amah-Nnachi on 2024-05-04.
//

import SwiftUI

struct LoginUIView: View {
    @State private var user = User()
    @State private var showPassword = false

    var body: some View {
        ZStack {
            Color.white.edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Welcome Back!").font(.largeTitle).bold()
                    Spacer()
                }.padding().padding(.top)
                
                Spacer()
                
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
                
                Button(action: {}) {
                    Text("Don't have an account? Sign Up").foregroundColor(.blue)
                }
                
                Spacer()
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Sign in").foregroundColor(.blue)
                        .font(.title3).bold().frame(maxWidth: .infinity).padding().background(RoundedRectangle(cornerRadius: 10).fill(Color("kSecondary"))).padding(.horizontal)
                }
            }
        }
    }
}
#Preview {
    LoginUIView()
}
