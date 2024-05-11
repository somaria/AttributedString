//
//  ContentView.swift
//  AttributedString
//
//  Created by daryl on 1/5/24.
//

import SwiftUI

import WrappingHStack

struct ContentView: View {
    @State private var toggleState = false

    var body: some View {
        LazyVStack {
            WrappingHStack {
               Text("My name is")
                if toggleState {
                    Text(makeAttributedString(text: "John"))
                      .frame(width: CGFloat("MichaelMike".count) * 11)
                        .background(Color.gray.opacity(0.1))
                        .border(.green)
                        .cornerRadius(4)
                        
                } else {
                    Text(makeAttributedString(text: "MichaelMike"))
                      .frame(width: CGFloat("MichaelMike".count) * 11)
                        .background(Color.gray.opacity(0.1))
                        .border(.green)
                        .cornerRadius(4)
                       
                }
                Text("This")
               Text("is")
               Text("true")
               Text("for")
               Text("now.")
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            Button("Toggle") {
                toggleState.toggle()
            }
            
        }
        .padding()
    }
    
    func makeAttributedString(text: String) -> AttributedString {
        var attributedString = AttributedString(text)
        return attributedString
    }
}
