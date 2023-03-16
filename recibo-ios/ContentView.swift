//
//  ContentView.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-03-15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Clients", systemImage: "person.3")
                }
            HomeView()
                .tabItem {
                    Label("New Invoice", systemImage: "doc.fill.badge.plus")
                }
            HomeView()
                .tabItem {
                    Label("All Invoices", systemImage: "doc.on.doc")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
