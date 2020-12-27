//
//  ChronoView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct ChronoView: View {
    var myBooks: [Book]
    @State private var isLeaveShowed = false
    
    var body: some View {
        VStack {
            // Titre de la vue et boutton
            HStack {
                Text("What are you going to read ?")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .padding(.leading, 10)
                Spacer()
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
                    .fontWeight(.semibold)
                Spacer()
            }
            
            Spacer()
            
            // Zone des bouttons
            VStack {
                stopButton(size: 50)
                LeaveButtonView(size: 15, action: {
                    isLeaveShowed.toggle()
                }).sheet(isPresented: $isLeaveShowed, content: {
                    Text("Leave")
                })
            }.padding()
        }
    }
    
    func stopButton(size: Int) -> some View{
        Button(action: {
            // Mettre en pause le chrono
        }, label: {
            Text("Stop")
                .font(.system(size: CGFloat(size)))
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
