//
//  ContentView.swift
//  flutter_apple_watch Watch App
//
//  Created by Matti Bylin on 19/05/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel: WatchViewModel = WatchViewModel()
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!!!!")
            Text("Counter: \(viewModel.counter)")
                           .padding()
                       Button(action: {
                           viewModel.sendDataMessage(for: .sendCounterToFlutter, data: ["counter": viewModel.counter + 1])
                       }) {
                           Text("+ by 2")
                       }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
