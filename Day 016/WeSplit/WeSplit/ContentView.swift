//
//  ContentView.swift
//  WeSplit
//
//  Created by Harshal Bhavsar on 02/02/2020.
//  Copyright © 2020 Harshal Bhavsar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    
    var body: some View {
        Form {
            TextField("Enter your name", text: $name)
            Text("Your name is \(name)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
