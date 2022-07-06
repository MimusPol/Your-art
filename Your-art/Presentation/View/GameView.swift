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
                VStack {
                    Text("Your score:")
                    Text("100")
                }
                .padding(20)

                Spacer()

                VStack {
                    Image(systemName: "crown")
                    Text("Achivments")
                        .foregroundColor(.black)
                }
                .padding(20)
            }
            .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .bottom)
            .padding(20)
            .font(.system(size: 18, weight: .medium, design: .rounded))

            NavigationLink(destination: {
                PlayView()
            }) {
                Text("Play")
                    .foregroundColor(.black)
                    .font(.system(size: 60, weight: .medium, design: .rounded))
            }
            .frame(width: UIScreen.main.bounds.width, height: 150, alignment: .center)
            .padding(110)

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
        .ignoresSafeArea()
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
