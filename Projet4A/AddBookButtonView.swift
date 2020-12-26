//
//  ButtonAddBookView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct AddBookButtonView: View {
    var size: CGFloat
    
    var body: some View {
        Button(action: {
            addBookButtonAction()
        }, label: {
            Text("Add Book")
                .font(.system(size: size))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                .padding()
        })
        .background(Color.green)
        .cornerRadius(10.0)
    }
    
    func addBookButtonAction(){
        // Lancer la vue pour chercher les livres
    }
}

struct AddBookButtonView_Previews: PreviewProvider {
    static var previews: some View {
        AddBookButtonView(size: 20)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

