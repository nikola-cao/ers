//
//  HostRoomView.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import SwiftUI

struct PlayerRoomView: View {
    @State private var vm = ViewModel()
    @State private var idInput: String = ""

    
    var body: some View {
        VStack {
            Text("Enter Room Code")
                .font(.title)
            TextField("ABCD", text: $idInput)
                .textInputAutocapitalization(.characters)
                .disableAutocorrection(true)
                .onChange(of: idInput) {
                        let filtered = idInput.uppercased()
                            .filter { $0.isLetter && $0.isASCII }
                            .prefix(4)
                        
                        if filtered != idInput {
                            idInput = String(filtered)
                        }
                    }
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            Button("Join") {
                
            }
            .buttonStyle(.borderedProminent)
            .disabled(idInput.count != 4)
        }
        .navigationTitle("Join Game")
        .navigationBarTitleDisplayMode(.inline)
        
        
//        Button("Ready up") {}
    }
}

#Preview {
    PlayerRoomView()
}
