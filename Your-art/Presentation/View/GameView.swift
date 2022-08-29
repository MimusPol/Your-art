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
            HStack(alignment: .bottom) {
                VStack {
                    Text("Your score:")
                    Text("100")
                }
                .padding(20)

                Spacer()

                VStack {
                    Image(systemName: "crown")
                    Text("Achievements")
                        .foregroundColor(.black)
                }
                .padding(20)
            }
            .font(.system(size: 18, weight: .medium, design: .rounded))

            NavigationLink(destination: {
                PlayView()
            }) {
                Text("Play")
                    .foregroundColor(.black)
                    .font(.system(size: 60, weight: .medium, design: .rounded))
            }
            .frame(height: 150)
            .frame(maxWidth: .infinity)
            .padding([.top, .bottom], 110)

            ZStack {
                Text("Some facts from database or something.")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .medium, design: .rounded))
            }
            .frame(maxWidth: .infinity, maxHeight: 200, alignment: .center)
                .border(Color.black)
                .padding(20)
        }
        .background(
            Image("GameBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
            GameView()
//        }
    }
}
