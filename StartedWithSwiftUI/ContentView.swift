//
//  ContentView.swift
//  StartedWithSwiftUI
//
//  Created by Bhavin Bhadani on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isOpen = false
    var body: some View {
        VStack {
            ArrowView(isOpen: $isOpen)
            Button {
                withAnimation {
                    isOpen.toggle()
                }
            } label: {
                Text("Press here")
            }
        }
    }
}

struct ArrowView: View {
    @Binding var isOpen: Bool
    var body: some View {
        Image(systemName: "arrow.down")
            .rotationEffect(.degrees(isOpen ? -180 : 0))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
