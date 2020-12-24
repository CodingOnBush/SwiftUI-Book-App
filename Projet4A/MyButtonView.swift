//
//  ReadingTimeButton.swift
//  Projet4A
//
//  Created by Sogekingu on 21/12/2020.
//

import SwiftUI

struct MyButtonView: View {
    var buttonName: String
    var backgroundColor: Color
    var textColor: Color
    var buttonScope: Int = 10
    var opacity: Double = 1.0
    var fontSize: Int = 20
    
    var body: some View {
        ZStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text(buttonName).padding(15)
            })
            .foregroundColor(textColor)
            .background(backgroundColor.opacity(opacity))
            .cornerRadius(7)
            .font(.system(size: CGFloat(fontSize)))
            .shadow(radius: 15)
            //.border(Color.black, width: 1)
        }
    }
}

struct MyButtonView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            MyButtonView(buttonName: "Reading time", backgroundColor: Color.green, textColor: Color.white, fontSize: 50)
            MyButtonView(buttonName: "Add book", backgroundColor: Color.blue, textColor: Color.white)
            MyButtonView(buttonName: "Pause", backgroundColor: Color.orange, textColor: Color.white)
            MyButtonView(buttonName: "Give up", backgroundColor: Color.blue, textColor: Color.red, buttonScope: 0, opacity: 0)
        }
        .previewLayout(.sizeThatFits)
        .padding()
    }
}
