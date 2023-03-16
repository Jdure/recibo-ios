//
//  HomeView.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-03-15.
//

import SwiftUI

struct HomeView: View {
    @State private var results = [User]()
    var body: some View {
        NavigationStack{
            List(results, id: \.id){ user in
                NavigationLink(value: user){
                    UserRow(user: user)
                }
            }
            .task {
                await loadData()
            }.navigationTitle("Clients")
        }
    }
    func loadData() async {
        guard let url = URL(string: "https://dummyjson.com/users?limit=10") else {
            print("Invalid URL")
            return
        }
        do {
            let (data, _) = try await URLSession.shared.data(from:url)
            if let decodedResponse = try? JSONDecoder().decode(Users.self, from: data) {
                results = decodedResponse.users
            }
        } catch {
            print("Invalid data")
        }
    }
}



struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
