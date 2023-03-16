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
                .frame(width: 50, height: 50)
                Text(user.firstName)
                Text( user.lastName)
            }
        }
    }
}

struct UserRow_Previews: PreviewProvider {
    static var previews: some View {
        UserRow(user: User.example )
    }
}
