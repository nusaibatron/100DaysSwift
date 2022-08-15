//
//  ContentView.swift
//  SwiftUnderHood
//
//  Created by Nusaiba Rahman on 8/15/22.
//

import SwiftUI

struct Watermark: ViewModifier {
    var text: String

    func body(content: Content) -> some View {
        ZStack(alignment: .bottomTrailing) {
            content
            Text(text)
                .font(.caption)
                .foregroundColor(.white)
                .padding(5)
                .background(.black)
        }
    }
}

extension View {
    func watermarked(with text: String) -> some View {
        modifier(Watermark(text: text))
    }
}

struct ContentView: View {
    
    struct CapsuleText: View {
        var text: String

        var body: some View {
            Text(text)
                .font(.largeTitle)
                .padding()
                .foregroundColor(.white)
                .background(.blue)
                .clipShape(Capsule())
        }
    }
    
    @State var isRed = true
    var myName = Text("Nusaiba")

    var body: some View {

        Button("Hello, world!") {
            isRed.toggle()
        }
        .foregroundColor(isRed ? .red : .blue)
        
        //Not all modifiers are for environment
        //some children take precendent, others don't
        VStack{
            Text("Gryffindor")
                .font(.largeTitle)
                .blur(radius: 0)
            Text("Slytherine")
            
        }
        .font(.subheadline)
        .blur(radius: 3)
        
        HStack {
            myName
            CapsuleText(text: "Charli")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
