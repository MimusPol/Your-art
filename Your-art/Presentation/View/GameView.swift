//
//  GameView.swift
//  Your-art
//
//  Created by Анастасия Василевская on 1.03.22.
//

import SwiftUI

struct GameView: View {
    var body: some View {
        VStack {
            HStack {
                NavigationLink(destination: {
                    HomeView()
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                    Text("Back")
                        .foregroundColor(.blue)
                }
                .padding(20)
                Spacer()
                VStack{
                    Image(systemName: "crown")
                    Text("Achivments")
                        .foregroundColor(.black)
                        .font(.system(size: 18, weight: .medium, design: .rounded))
                }
                .padding(20)
            }
            .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
            Spacer()
            Spacer()
            NavigationLink(destination: {
                PlayView()
            }) {
                Text("Play")
                    .foregroundColor(.black)
                    .font(.system(size: 60, weight: .medium, design: .rounded))
            }
            Text("Your score:")
            Text("100")
            Spacer()
            Text("Some facts from database or something.")
                .foregroundColor(.black)
                .font(.system(size: 18, weight: .medium, design: .rounded))
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: 200, alignment: .center)
                .border(Color.black)
                .padding(20)
            Spacer()
        }
        .background(
            Image("GameBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height))
        .navigationBarHidden(true)
        .ignoresSafeArea()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
