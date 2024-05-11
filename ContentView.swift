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
                      .frame(width: CGFloat("Michael".count) * 11)
                        .background(Color.gray.opacity(0.1))
                        .border(.green)
                        .cornerRadius(4)
                        
                } else {
                    Text(makeAttributedString(text: "Michael"))
                      .frame(width: CGFloat("Michael".count) * 11)
                        .background(Color.gray.opacity(0.1))
                        .border(.green)
                        .cornerRadius(4)
                       
                }
                Text("for now.")
               Text("This is true")
               Text("for now.")
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
