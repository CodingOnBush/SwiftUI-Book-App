//
//  LeaveButtonView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct LeaveButtonView: View {
    var size: CGFloat
    let action: () -> Void
    
    var body: some View {
        Button(action: action, label: {
            Text("Leave?")
                .font(.system(size: size))
                .underline()
                .foregroundColor(.red)
                .padding(5)
        })
    }
}

struct LeaveButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LeaveButtonView(size: 20, action: {})
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
