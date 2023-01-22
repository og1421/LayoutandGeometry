//
//  ContentView.swift
//  LayoutandGeometry
//
//  Created by Orlando Moraes Martins on 21/01/23.
//

import SwiftUI

struct ContentView: View {
    let colors: [Color] = [.red, .blue, .green, .orange, .pink, .purple, .yellow]
    
    var body: some View {
        GeometryReader { fullView in
            ScrollView(.vertical) {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(colors[index % 7])
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                    }
                    .frame(height: 40)
                    .opacity(self.opacity(geo: fullView))
                }
            }
        }
    }
    private func opacity (geo: GeometryProxy) -> Double {
        let y = geo.frame(in: .global).minY
        let threshold: CGFloat = 200
        
        if y > threshold {
            return Double((threshold - y) / threshold)
        } else {
            return 1.0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
