//
//  ContentView.swift
//  CoreBluetoothLESampleSwiftUI
//
//  Created by user on 2022/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack {
                NavigationLink(destination: CentralView()){
                    Text("Central Mode")
                }
                .padding()
                
                NavigationLink(destination: PeripheralView()){
                    Text("Peripheral Mode")
                }
                .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
