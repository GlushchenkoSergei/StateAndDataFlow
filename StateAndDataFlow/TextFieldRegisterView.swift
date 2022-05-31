//
//  TextFieldRegisterView.swift
//  StateAndDataFlow
//
//  Created by mac on 31.05.2022.
//

import SwiftUI

struct TextFieldRegisterView: View {
    
    @Binding var name: String
    @Binding var isPresented: Bool
    @Binding var colorCounter: Color
    
    var body: some View {
        TextField("Enter your name...", text: $name)
            .multilineTextAlignment(.center)
            .onChange(of: name) { newValue in
                checkCounter(newValue.count)
            }
    }

    private func checkCounter(_ count: Int) {
        if count > 2 {
            isPresented = false
            colorCounter = .green
        } else {
            isPresented = true
            colorCounter = .red
        }
    }
}

struct TextFieldRegisterView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldRegisterView(name: .constant(""), isPresented: .constant(.random()), colorCounter: .constant(.blue))
    }
}
