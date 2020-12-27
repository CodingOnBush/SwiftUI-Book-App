//
//  InfoButtonView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct InfoButtonView: View {
    var size: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "info.circle")
                .font(.system(size: size))
                .padding(5)
        })
    }
}

struct InfoButtonView_Previews: PreviewProvider {
    static var previews: some View {
        InfoButtonView(size: 20, action: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
