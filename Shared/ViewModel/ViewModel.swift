//
//  ViewModel.swift
//  ChatApp
//
//  Created by Israel Manzo on 6/30/21.
//

import SwiftUI
import Firebase

class ViewModel: ObservableObject {
    @Published var messages = [ModelMessages]()
    @AppStorage("currentUser") var user = ""
    
    func onAppear() {
        if user.isEmpty {
            UIApplication.shared.windows.first?.rootViewController?.present(joinAlertView(), animated: true, completion: nil)
        }
    }
    func joinAlertView() -> UIAlertController {
        let alert = UIAlertController(title: "Join the chat", message: "Enter your name", preferredStyle: .alert)
        
        alert.addTextField { text in
            text.placeholder = "eg name"
        }
        let join = UIAlertAction(title: "Ok", style: .default) { _ in
            guard let user = alert.textFields?[0].text else { return }
            if user.isEmpty {
                self.user = user
                return
            }
            UIApplication.shared.windows.first?.rootViewController?.present(alert, animated: true, completion: nil)
        }
        alert.addAction(join)
        
        return alert
    }
}
