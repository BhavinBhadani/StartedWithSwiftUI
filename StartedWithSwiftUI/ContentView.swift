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

struct ShapeViews: View {
    var body: some View {
        VStack {
            Capsule(style: .circular)
                .frame(width: 200, height: 40)
                .foregroundColor(.blue)
            
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
        ShapeViews()
    }
}
