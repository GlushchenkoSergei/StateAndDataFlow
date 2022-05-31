//
//  RegisterView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @State private var isPresented = true
    @State private var colorCounter: Color = .red
    
    var body: some View {
        VStack {
            HStack {
                TextFieldRegisterView(name: $name, isPresented: $isPresented, colorCounter: $colorCounter)
                
                Text("\(name.count)")
                    .foregroundColor(colorCounter)
            }
            .padding()
            RegistersButtonView(isPresented: $isPresented, name: $name)
        }
    }
}


struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
