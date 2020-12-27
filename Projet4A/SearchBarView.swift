//
//  SearchBarView.swift
//  Projet4A
//
//  Created by Sogekingu on 27/12/2020.
//

import SwiftUI

class SearchClass: ObservableObject {
    @Published var currentResearch: String = ""
}


struct SearchBarView2: View {
    @ObservedObject var vm: SearchClass = SearchClass()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(vm.currentResearch)
        }
    }
}

struct SearchBarView: View {
    @State public var research: String = ""
    @ObservedObject var vm: SearchClass = SearchClass()
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Find a book")
                    .font(.callout)
                    .bold()
            HStack {
                TextField("Yoww", text: $research)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .disableAutocorrection(true)
                    .font(.system(size: CGFloat(30)))
                Spacer()
                Button(action: {
                    self.vm.currentResearch = research
                }, label: {
                    Text("GO")
                })
            }
        }
    }
}




struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
