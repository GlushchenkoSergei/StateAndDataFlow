//
//  ContentView.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var user: StorageManager
    @StateObject private var timer = TimeCounter()
    
    var body: some View {
        VStack(spacing: 40) {
            Text("Hi, \(user.getData())")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            Spacer()
            
            ButtonWith(title: timer.buttonTitle, color: .red) { timer.startTimer() }
            
            Spacer()
            ButtonWith(title: "LogOut", color: .blue) { tapLogOut() }
        }
    }
}

extension ContentView {
    private func tapLogOut() {
        user.removeData()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(StorageManager.shared)
    }
}


