//
//  ContentView.swift
//  WeSplit
//
//  Created by Harshal Bhavsar on 02/02/2020.
//  Copyright © 2020 Harshal Bhavsar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    var body: some View {
        Button("Tap Count \(tapCount)") {
            self.tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
