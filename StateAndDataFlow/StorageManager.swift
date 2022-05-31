//
//  StorageManager.swift
//  StateAndDataFlow
//
//  Created by mac on 31.05.2022.
//

import SwiftUI

class StorageManager: ObservableObject {
    
    static let shared = StorageManager()
    @AppStorage("userName") private var userName: String?
    
    private init() {}
    
    func saveData(name: String) {
        userName = name
    }
    
    func getData() -> String {
        userName ?? ""
    }
    
    func removeData() {
        userName = nil
    }
    
}
