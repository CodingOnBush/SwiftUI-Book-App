//
//  InfoButtonView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct InfoButtonView: View {
    var size: CGFloat
    var body: some View {
        Button(action: {
            infoButtonAction()
        }, label: {
            Image(systemName: "info.circle")
                .font(.system(size: size))
                .padding(5)
        })
    }
    
    func infoButtonAction(){
        // Ouvrir la vue avec les infos
    }
}

struct InfoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoButtonView(size: 20)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
