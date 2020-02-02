//
//  ContentView.swift
//  WeSplit
//
//  Created by Harshal Bhavsar on 02/02/2020.
//  Copyright © 2020 Harshal Bhavsar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let students = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    var body: some View {
        Picker("Select your student", selection: $selectedStudent) {
            ForEach(0..<students.count) {
                Text(self.students[$0])
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
