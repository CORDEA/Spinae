//
//  ContentView.swift
//  Spinae
//
//  Created by Yoshihiro Tanaka on 7/10/21.
//

import SwiftUI

struct ContentView: View {
    let viewModel = MainViewModel()

    var body: some View {
        Button("Start", action: viewModel.onStartTapped)
                .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
