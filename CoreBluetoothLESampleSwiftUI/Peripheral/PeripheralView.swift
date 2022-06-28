//
//  PeripheralView.swift
//  CoreBluetoothLESampleSwiftUI
//
//  Created by user on 2022/01/24.
//

import SwiftUI

struct PeripheralView: View {
    @StateObject private var viewModel = PeripheralViewModel()
    
    var body: some View {
        VStack {
            TextEditor(text: $viewModel.textMessage)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()            
        }
        .onAppear(perform: viewModel.setupPeripheralManager)
        .onDisappear(perform: viewModel.deinitPeripheralManager)
    }
}

struct PeripheralView_Previews: PreviewProvider {
    static var previews: some View {
        PeripheralView()
    }
}
