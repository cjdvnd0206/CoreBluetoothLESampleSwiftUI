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
            TextField("메시지입력", text: $viewModel.textMessage)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                .padding()
            
            HStack {
                Button(action: viewModel.sendAction, label: {
                    Text("전송")
                        .padding()
                })
                
                Button(action: viewModel.stopAction, label: {
                    Text("중지")
                        .padding()
                })
            }
            
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
