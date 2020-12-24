//
//  LeaveButtonView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct LeaveButtonView: View {
    var size: CGFloat
    var body: some View {
        Button(action: {
            leaveButtonAction()
        }, label: {
            Text("Leave?")
                .font(.system(size: size))
                .underline()
                .foregroundColor(.red)
                .padding(5)
        })
    }
    
    func leaveButtonAction(){
        // Lancer une pop pup pour prévenir
        // Soit juste supprimer la pop up
        // Soit quitter la vue du chronométre pour revenir à la vu principal avec tous les livres
    }
}

struct LeaveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LeaveButtonView(size: 20)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
