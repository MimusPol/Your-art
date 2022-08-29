//
//  PlayView.swift
//  Your-art
//
//  Created by Анастасия Василевская on 1.03.22.
//

import SwiftUI

struct PlayView: View {
    @State private var buttonTapped: UserSelection = .all

    var body: some View {
        ZStack(alignment: .top) {
            Image("GameBackground")
                .resizable()
                .ignoresSafeArea()

            VStack {
                Text("Choose gamemode")
                    .foregroundColor(.black)
                    .font(.system(size: 40, weight: .light, design: .rounded))
                    .frame(height: 70, alignment: .center)
                HStack {
                    Button("All") {
                        buttonTapped = .all
                    }
                    .padding()
                    .foregroundColor(.indigo)
                    .font(.system(size: 20, weight: .light, design: .rounded))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(buttonTapped == .all ? Color.blue : Color.red, lineWidth: buttonTapped == .all ? 8 : 2)
                    )

                    Button("Only Artists") {
                        buttonTapped = .onlyArtists
                    }
                    .padding()
                    .foregroundColor(.indigo)
                    .font(.system(size: 20, weight: .light, design: .rounded))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(buttonTapped == .onlyArtists ? Color.blue : Color.red, lineWidth: buttonTapped == .onlyArtists ? 8 : 2)
                    )

                    Button("Only paintings") {
                        buttonTapped = .onlyPaintings
                    }
                    .padding()
                    .foregroundColor(.indigo)
                    .font(.system(size: 20, weight: .light, design: .rounded))
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(buttonTapped == .onlyPaintings ? Color.blue : Color.red, lineWidth: buttonTapped == .onlyPaintings ? 8 : 2)
                    )
                }

                NavigationLink(destination: {
                    StartView()
                }) {
                    Text("Start")
                        .foregroundColor(.black)
                        .font(.system(size: 60, weight: .medium, design: .rounded))
                }
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                .padding([.top, .bottom], 110)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}

enum UserSelection {
    case all
    case onlyArtists
    case onlyPaintings
}

struct PlayView_Previews: PreviewProvider {
    static var previews: some View {
//        NavigationView {
            PlayView()
//        }
    }
}
