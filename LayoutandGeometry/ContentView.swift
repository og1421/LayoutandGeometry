//
//  ContentView.swift
//  LayoutandGeometry
//
//  Created by Orlando Moraes Martins on 21/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            ForEach(0..<10) { number in
                Text("Number \(number)")
                    .alignmentGuide(.leading ){ _ in
                        Double(number) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
