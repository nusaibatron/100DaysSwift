//
//  ContentView.swift
//  WeSplit
//
//  Created by Nusaiba Rahman on 8/10/22.
//

import SwiftUI

struct ContentView: View {
    
    // Swift structs cannot modify vars!
    // @State keywords, stores is seperately
    // so we can change
    @State private var tapCount = 0
    @State private var myFaveFood = ""
    var students = ["Harry", "Ron"]
    @State private var selectedStudent = "Harry"

    var body: some View {

        NavigationView {
            

            Form {
                Picker("Select student", selection: $selectedStudent ) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                    
                }
                Section {
                Text("Hello, taco!")
                Text("Hello, pizza!")
                    TextField("what's your fave: ", text: $myFaveFood)
                    Text("You're craving: \(myFaveFood)")

                }
                Section {
                    Text("Hello, Ohio")
                    Text("Hello, California")
                }
                Button("tap count is \(tapCount)") {
                    tapCount += 1
                }

            } .navigationTitle("Categories") //on form
                .navigationBarTitleDisplayMode(.inline)
        } //.navigationTitle("Categories!") //don't put it here; adds entire NavigationView
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

