//
//  ButtonAddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct AddBookButtonView: View {
    var size: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text("Add Book")
                .font(.system(size: size))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .padding()
        })
        .background(Color.pink)
        .cornerRadius(10.0)
    }
}

struct AddBookButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookButtonView(size: 20, action: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

