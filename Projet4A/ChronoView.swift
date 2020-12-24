//
//  ChronoView.swift
//  Projet4A
//
//  Created by Sogekingu on 24/12/2020.
//

import SwiftUI

struct ChronoView: View {
    var body: some View {
        VStack {
            HStack {
                Text("What are you going to read ?")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .padding(.leading, 10)
                
                Spacer()
                
                Button(action: {
                    // Revenir à la MyBooksView
                }, label: {
                    Text("Cancel")
                        .foregroundColor(.black)
                        .font(.system(size: 15))
                        .underline()
                })
                .padding(.trailing, 10)
            }
            .padding()
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(myBooks){ myBook in
                        FrontCover(book: myBook, height: 200)
                    }
                }
                .padding(.leading, 15)
            }
            
            Spacer()
            
            HStack {
                Spacer()
                
                Text("00:00:00")
                    .font(.system(size: 80))
                    .foregroundColor(.black)
                    .fontWeight(.semibold)
                Spacer()
            }.border(Color.black, width: 1)
            
            Spacer()
            
            VStack {
                Button(action: {}, label: {
                    Text("Stop")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                        .padding()
                })
                .background(Color.orange)
                .cornerRadius(15.0)
                
                LeaveButtonView(size: 15)
            }.padding()
        }
    }
}

struct ChronoView_Previews: PreviewProvider {
    static var previews: some View {
        ChronoView()
    }
}
