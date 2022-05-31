//
//  StarterVIew.swift
//  StateAndDataFlow
//
//  Created by brubru on 21.02.2022.
//

import SwiftUI

struct StarterVIew: View {
    
    @EnvironmentObject var user: StorageManager
   
    var body: some View {
        Group {
            if !user.getData().isEmpty {
                ContentView()
            } else {
                RegisterView()
            }
        }
    }
}

struct StarterVIew_Previews: PreviewProvider {
    static var previews: some View {
        StarterVIew()
            .environmentObject(StorageManager.shared)
    }
}
