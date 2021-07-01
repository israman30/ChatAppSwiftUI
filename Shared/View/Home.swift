//
//  Home.swift
//  ChatApp
//
//  Created by Israel Manzo on 7/1/21.
//

import SwiftUI

struct Home: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        VStack {
            Text("Home")
        }
        .onAppear {
            vm.onAppear()
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
