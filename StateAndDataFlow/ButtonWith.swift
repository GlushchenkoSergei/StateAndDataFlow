//
//  ButtonWith.swift
//  StateAndDataFlow
//
//  Created by mac on 31.05.2022.
//


import SwiftUI

struct ButtonWith: View {
    
    let title: String
    let color: Color
    let someFunc: () -> Void
    
    var body: some View {
        Button(action: someFunc) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(color)
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.black, lineWidth: 4)
        )
    }
}

struct NewButton_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWith(title: "Кнопка", color: .black) {}
    }
}
