//
//  ContentView.swift
//  LayoutandGeometry
//
//  Created by Orlando Moraes Martins on 21/01/23.
//

import SwiftUI

extension VerticalAlignment {
    enum MidAcountAndName: AlignmentID {
        static func defaultValue(in context: ViewDimensions) -> CGFloat {
            context[.top]
        }
    }
    
    static let midAccountAndName = VerticalAlignment(MidAcountAndName.self)
}

struct ContentView: View {
    var body: some View {
        HStack(alignment: .midAccountAndName ){
            VStack{
                Text("@orlandogmmc")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                Image("Apple_logo_grey.svg")
                    .resizable()
                    .frame(width: 64, height: 64)
            }
            
            VStack{
                Text("Full name")
                Text("Orlando Moraes Martins")
                    .alignmentGuide(.midAccountAndName) { d in d[VerticalAlignment.center]}
                    .font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
