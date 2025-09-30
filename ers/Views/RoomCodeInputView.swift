//
//  RoomCodeInputView.swift
//  ers
//
//  Created by Patrick Guo on 9/29/25.
//

import SwiftUI

struct RoomCodeInputView: View {
    @State private var idInput: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Enter Room Code")
                    .font(.title2)
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
                NavigationLink("Join") {
                    WaitingRoomView(isHost: false)
                }
                .buttonStyle(.borderedProminent)
                .disabled(idInput.count != 4)
            }
            .navigationTitle("Join")
            .navigationBarTitleDisplayMode(.inline)
        }
        
        
//        Button("Ready up") {}
    }
}

#Preview {
    RoomCodeInputView()
}
