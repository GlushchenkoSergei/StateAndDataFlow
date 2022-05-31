//
//  ButtonForRegisterView.swift
//  StateAndDataFlow
//
//  Created by mac on 31.05.2022.
//

import SwiftUI

struct RegistersButtonView: View {
    
    @EnvironmentObject var user: StorageManager
    @Binding var isPresented: Bool
    @Binding var name: String
    
    var body: some View {
        Button(action: registerUser) {
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Ok")
            }
        }
        .disabled(isPresented)
    }
}

extension RegistersButtonView {
    private func registerUser() {
        user.saveData(name: name)
    }
}

struct ButtonForRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegistersButtonView(isPresented: .constant(.random()), name: .constant(""))
    }
}
