//
//  ContentView.swift
//  Inxense
//
//  Created by Abhinay Pratap on 19/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color("purple"))
                .frame(width: 400, height: 400)
                .padding([.bottom], 400)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                VStack {
                    
                    Text("Email ID")
                        .foregroundColor(.black)
                        .frame(width: 300, alignment: .leading)
                    
                    TextField("Username", text: $username)
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    
                    Text("Password")
                        .foregroundColor(.black)
                        .frame(width: 300, alignment: .leading)
                    
                    SecureField("Password", text: $password)
                        .font(.system(size: 20, weight: .bold))
                        .padding()
                        .frame(width: 300, height: 50)
                        .background(Color.black.opacity(0.05))
                        .cornerRadius(10)
                    Button(action: {}, label: {
                        Text("Forgot Password")
                            .foregroundColor(.gray)
                    })
                    .frame(width: 300, alignment: .trailing)
                    
                    Button("Login") {
                        print("Login Tapped")
                    }
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundColor(.white)
                    .frame(width: 280, height: 50)
                    .background(Color("purple"))
                    .cornerRadius(10)
                    
                }
                .padding(.all, 30)
                .background(.white)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color("purple"), lineWidth: 1))
                
                HStack {
                    Text("New User?")
                    Button("SignUp") {
                        
                    }
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.white)
                    .background(Color.red)
                    .cornerRadius(4)
                }
                .padding(.top, 20)
                
                
                Spacer()
                Text("By using this app you agree to the terms & conditions and the privacy policy.")
                    .font(.system(size: 14, weight: .regular, design: .default))
                    .padding([.leading, .trailing], 30)
                    .padding([.bottom], 1)
                Link("Terms & Conditions", destination: URL(string: "https://www.inxense.in/privacy-policy")!)
                    .font(.system(size: 14))
                Link("Privacy Policy", destination: URL(string: "https://www.inxense.in/privacy-policy")!)
                    .font(.system(size: 14))
                    .padding(.bottom)
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
