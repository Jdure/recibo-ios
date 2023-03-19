//
//  NewInvoice.swift
//  recibo-ios
//
//  Created by Jonathan Dure on 2023-03-17.
//
import PhotosUI
import SwiftUI

struct NewInvoice: View {
    @State var fullName: String = ""
    @State var email: String = ""
    @State var phoneNumber: String = ""
    @State private var avatarItem: PhotosPickerItem?
    @State private var avatarImage: Image?
    
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("Enter Client Information")) {
                    TextField(.init(""), text: $fullName, prompt: Text("John Smith"))
                    TextField(.init(""), text: $email, prompt: Text("JohnSmith@example.com"))
                    TextField(.init(""), text: $email, prompt: Text("(555)-555-5555"))
                }
                
            }.navigationTitle("Create Invoice")
                .navigationBarTitleDisplayMode(.inline)
            Spacer()
//            VStack {
//                PhotosPicker("Select Client Image", selection: $avatarItem, matching: .images)
//
//                if let avatarImage {
//                    avatarImage
//                        .resizable()
//                        .scaledToFit()
//                        .frame(width: 300, height: 300)
//                }
//
//            }
//            .onChange(of: avatarItem) { _ in
//                Task {
//                    if let data = try? await avatarItem?.loadTransferable(type: Data.self) {
//                        if let uiImage = UIImage(data: data) {
//                            avatarImage = Image(uiImage: uiImage)
//                            return
//                        }
//                    }
//                }
//                print("FAILED")
//            }
        }
        
    }
}

struct NewInvoice_Previews: PreviewProvider {
    static var previews: some View {
        NewInvoice()
    }
}
