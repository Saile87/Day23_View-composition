//
//  ContentView.swift
//  Day23_View composition
//
//  Created by Elias Breitenbach on 09.03.23.
//

import SwiftUI

struct CapsuleText: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.largeTitle)
            .padding()
            
            .background(.blue)
            .clipShape(Capsule())
    }
}
struct ContentView: View {
    var body: some View {
        VStack(spacing: 10) {
           CapsuleText(text: "First")
                .foregroundColor(.white)
            CapsuleText(text: "Second")
                .foregroundColor(.yellow)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
