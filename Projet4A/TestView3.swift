//
//  TestView3.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

struct TestView3: View {
    @State private var isPrensted = false
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                    self.isPrensted.toggle()
                }, label: {
                    Text("Button")
                })
            }.navigationBarTitle("Title")
            .sheet(isPresented: $isPrensted, content: {
                
            })
        }
    }
}

struct TestView3_Previews: PreviewProvider {
    static var previews: some View {
        TestView3()
    }
}
