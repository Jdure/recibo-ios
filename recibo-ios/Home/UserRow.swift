//
//  UserRow.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-03-15.
//

import SwiftUI

struct UserRow: View {
    let user: User
    var body: some View {
        VStack {
            HStack{
                AsyncImage(url: URL(string: user.image)) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                }
                .frame(width: 50, height: 50).clipShape(Circle()).overlay(Circle().stroke(.gray, lineWidth: 2))
                VStack (alignment: .leading){
                    Text(user.firstName + " " + user.lastName).font(.headline)
                    Text(user.company.name).font(.caption).foregroundColor(.gray)
                }
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User.example )
    }
}
