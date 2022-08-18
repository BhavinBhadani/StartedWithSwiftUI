//
//  ContentView.swift
//  StartedWithSwiftUI
//
//  Created by Bhavin Bhadani on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image(systemName: "cloud.sun")
            .font(.system(size: 50, weight: .bold))
            .foregroundColor(.red)
            .symbolVariant(.fill)
    }
}

struct ImageStackRendringView: View {
    var body: some View {
        VStack {
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.monochrome)
                .foregroundColor(.red)
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.multicolor)
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.hierarchical)
            
            Image(systemName: "cloud.sun")
                .symbolRenderingMode(.palette)
                .foregroundStyle(.white, .blue)
        }
        .padding()
        .background(.mint)
        .font(.system(size: 50, weight: .bold))
        .symbolVariant(.fill)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ImageStackRendringView()
    }
}
