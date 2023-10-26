//
//  ContentView.swift
//  LoginScreenDemo
//
//  Created by Dilip Tiwari on 26/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var textFieldText: String = ""

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Sign in")
                    .font(Font.headline.weight(.semibold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                TextField("Username or email", text: $textFieldText)
                    .padding()
                    .background(Color.white).cornerRadius(10)
                    .foregroundColor(Color.red)
                    .font(.headline)
                
                
                TextField("Password", text: $textFieldText)
                    .padding()
                    .background(Color.white).cornerRadius(10)
                    .foregroundColor(Color.red)
                    .font(.headline)
                                
                HStack {
                    Image(systemName: "square")
                        .background(Color.white)
                    Text("Remember me")
                        .foregroundColor(.black.opacity(0.5))
                    Spacer()
                }
                .font(.caption)
                
                Button {
                    
                } label: {
                    Text("Sign In")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(.black.opacity(0.7))
                        .cornerRadius(10)
                }
                
                HStack {
                    Spacer()
                    Text("Forget Password?")
                        .font(.caption)
                        .foregroundColor(.black.opacity(0.5))
                }
            }
        }
        .padding()
        .background(
            LinearGradient(
                gradient: Gradient(colors: [Color.pink.opacity(0.3), Color.pink.opacity(0.3)]),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
                .ignoresSafeArea(.all)
        )
        .shadow(radius:5)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
