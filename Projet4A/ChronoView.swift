//
//  ChronoView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct ChronoView: View {
    var myBooks: [Book]
    
    var body: some View {
        VStack {
            // Titre de la vue et boutton
            HStack {
                Text("What are you going to read ?")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/)
                    .padding(.leading, 10)
                Spacer()
                cancelButton()
            }
            .padding()
            
            // Vue horizontal des livres
            MyBooksHorizontalView(myBooks: myBooks, height: 150)
                .padding(10)
            
            Spacer()
            
            // Chrono space
            HStack {
                Spacer()
                Text("00:00:00")
                    .font(.system(size: 90))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                Spacer()
            }
            
            Spacer()
            
            // Zone des bouttons
            VStack {
                stopButton(size: 50)
                LeaveButtonView(size: 15)
            }.padding()
        }
    }
    
    func cancelButton() -> some View{
        return Button(action: {
            // Retourner à la vie précédente
        }, label: {
            Text("Cancel")
                .foregroundColor(.black)
                .font(.system(size: 15))
                .underline()
        }).padding(.trailing, 10)
    }
    
    func stopButton(size: Int) -> some View{
        Button(action: {
            // Mettre en pause le chrono
        }, label: {
            Text("Stop")
                .font(.system(size: CGFloat(size)))
                .foregroundColor(.white)
                .fontWeight(.bold)
                .padding()
        })
        .background(Color.orange)
        .cornerRadius(15.0)
    }
}

struct ChronoView_Previews: PreviewProvider {
    static var previews: some View {
        ChronoView(myBooks: myBooks)
    }
}
