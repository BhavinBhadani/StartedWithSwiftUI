//
//  ContentView.swift
//  StartedWithSwiftUI
//
//  Created by Bhavin Bhadani on 17/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct BorderViews: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
                .padding()
                .border(.red)
            
            Text("Border with width")
                .padding()
                .border(.orange, width: 2)
            
            Text("With Overlay property")
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.blue, lineWidth: 2)
                )

            Circle()
                .strokeBorder(
                    AngularGradient(gradient: Gradient(colors: [.red, .orange, .red]),
                                    center: .center,
                                    endAngle: .degrees(360)),
                    lineWidth: 20
                )
                .frame(width: 100, height: 100)
        }
        .padding()
    }
}


struct ShapeViews: View {
    var body: some View {
        VStack {
            Capsule(style: .circular)
                .fill(.blue)
                .frame(width: 200, height: 40)
            
            Capsule(style: .continuous)
                .frame(width: 100, height: 50)
                .foregroundColor(.red)

            Circle()
                .frame(width: 30, height: 30)
            
            Ellipse()
                .frame(width: 80, height: 30)
            
            Rectangle()
                .frame(width: 80, height: 30)

            RoundedRectangle(cornerRadius: 10)
                .frame(width: 80, height: 30)
            
            Image("zen")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            

        }
        .padding()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BorderViews()
    }
}
