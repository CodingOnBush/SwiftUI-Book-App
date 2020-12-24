//
//  ButtonReadingTimeView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct ReadingTimeButtonView: View {
    var size: CGFloat
    var body: some View {
        ZStack {
            Button(action: {
                readingTimeButtonAction()
            }, label: {
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
    
    func readingTimeButtonAction(){
        // Lancer la vue avec le chrono
    }
}

struct ReadingTimeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ReadingTimeButtonView(size: 20)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
