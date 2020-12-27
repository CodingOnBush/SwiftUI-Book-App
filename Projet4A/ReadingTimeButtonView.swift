//
//  ButtonReadingTimeView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct ReadingTimeButtonView: View {
    var size: CGFloat
    let action: () -> Void
    
    var body: some View {
        ZStack {
            Button(action: action, label: {
                Text("Reading time")
                    .font(.system(size: size))
                    .foregroundColor(Color.white)
                    .fontWeight(.bold)
                    .padding()
            })
            .background(Color.blue)
            .cornerRadius(10.0)
        }
    }
    
}

struct ReadingTimeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingTimeButtonView(size: 20, action: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
