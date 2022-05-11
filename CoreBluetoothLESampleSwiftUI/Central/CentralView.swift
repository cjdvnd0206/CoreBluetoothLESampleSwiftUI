//
//  CentralView.swift
//  CoreBluetoothLESampleSwiftUI
//
//  Created by user on 2022/01/24.
//

import SwiftUI

struct CentralView: View {
    @StateObject private var viewModel = CentralViewModel()
    
    var body: some View {
        Text(viewModel.textMessage)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding()
            .onAppear(perform: viewModel.setupCentralManager)
            .onDisappear(perform: viewModel.deinitCentralManager)
    }
}

struct CentralView_Previews: PreviewProvider {
    static var previews: some View {
        CentralView()
    }
}
