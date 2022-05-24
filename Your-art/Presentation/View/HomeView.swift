//
//  HomeView.swift
//  Your-art
//
//  Created by Анастасия Василевская on 1.03.22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            GeometryReader { frameSize in
                ScrollView(.horizontal) {
                    HStack(alignment: .top) {
                        VStack {
                            Spacer()
                            NavigationLink(destination: {
                                GameView()
                            }) {
                                Text("Game")
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Text("Status")
                                .font(.subheadline)
                            Spacer()
                        }
                        .frame(width: frameSize.size.width, height: nil, alignment: .top)
                        .background(
                            Image("GameBackground")
                                .resizable()
                                .scaledToFit()
                        )
                        //                        .border(.red)
                        VStack {
                            Spacer()
                            NavigationLink(destination: {
                                OrderView()
                            }) {
                                Text("Order")
                                    .foregroundColor(.black)
                                    .font(.title)
                            }
                            Text("Status")
                                .font(.subheadline)
                            Spacer()
                        }
                        .frame(width: frameSize.size.width, height: nil, alignment: .top)
                        .background(
                            Image("OrderBackground")
                                .resizable()
                                .scaledToFit())
                    }
                    .frame(width: nil,
                           height: frameSize.size.height,
                           alignment: .center)
//                    .border(.yellow)
                }
//                                .transition(.move(edge: .bottom))
            }
            .ignoresSafeArea()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}
