//
//  LoginView.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-05-01.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
            VStack (spacing: 10) {
                Image("login")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                TextField("E-mail", text: $email)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color(.systemGray6))
                    .cornerRadius(5.0)
                Button(action: {}, label: {
                    HStack {
                        Text("Log In")
                            .foregroundColor(.white)
                        Spacer()
                    }.padding()
                        .background(Color.blue)
                        .cornerRadius(5.0)
                    
                })
            }
            .padding()
            .navigationTitle("Sign In")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            LoginView()
        }
    }
}
