//
//  EmailSignUpView.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-05-01.
//

import SwiftUI

struct EmailSignUpView: View {
    @State var email: String = ""
    @State var password: String = ""
    var body: some View {
        VStack (spacing: 10) {
            Image("signup")
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
                    Text("Sign Up")
                        .foregroundColor(.white)
                    Spacer()
                }.padding()
                    .background(Color.blue)
                    .cornerRadius(5.0)
                
            })
            NavigationLink(destination: LoginView()) {
                            Text("Already have an account? Log in")
                    .padding()
                        }
        }.padding()
            .navigationTitle("Sign Up")
    }
}

struct EmailSignUpView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            EmailSignUpView()
        }
    }
}
