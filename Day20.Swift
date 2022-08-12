//
//  ContentView.swift
//  FlagGuesser
//
//  Created by Nusaiba Rahman on 8/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showingAlert = false
    @State private var showingAlertEditing = false

    
    var body: some View {
        ZStack(alignment: .center){
            
            VStack {
                //Colors are views themselves
                Color.pink.frame(minWidth: 200, maxWidth: .infinity, maxHeight: 500)
                Color.orange

            }
            VStack {
                Text("Nusaiba")
                    .foregroundColor(.white)
                    .padding(50)
                    .background(.ultraThinMaterial)
                Button("Press Here", role: .cancel) {
                    showingAlert = true
                }
                    .buttonStyle(.bordered)
                    .alert("Alert message", isPresented: $showingAlert) {
                        Button("Ok") {}
                    }
                Button {
                    showingAlertEditing = true
                } label: {
                    Image(systemName: "pencil")
                    }
                .alert("Editing", isPresented: $showingAlertEditing) {
                    Button("Exit editing") {}
                }
                
            }
            
        } .ignoresSafeArea()

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
        ContentView().preferredColorScheme(.light)
    }
}
