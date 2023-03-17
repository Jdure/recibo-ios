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
            ClientsView()
                .tabItem {
                    Label("Clients", systemImage: "person.3")
                }
            NewInvoice()
                .tabItem {
                    Label("New Invoice", systemImage: "doc.fill.badge.plus")
                }
            InvoicesView()
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
