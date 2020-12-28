//
//  TestView.swift
//  Projet4A
//
//  Created by Sogekingu on 28/12/2020.
//

import SwiftUI

struct TestView: View {
    var layout = [
        GridItem(.adaptive(minimum: 100), spacing: 2, alignment: .center)
    ]
    
    let symbols = ["heart", "paperplane", "pencil", "trash", "folder"]
    
    var body: some View {
        LazyVGrid(columns: layout) {
            ForEach(symbols, id: \.self) { symbol in
                VStack {
                    Image(systemName: symbol)
                        .font(.system(size: 30))
                    Text(symbol)
                        .font(.system(size: 10))
                }.padding()
            }
        }
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
