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
            TabView {
                GamePartOfTabHomeView()
                OrderPartOfTabHomeView()
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
        }
        .navigationBarHidden(true)
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HomeView()
        }
    }
}

struct GamePartOfTabHomeView: View {
    var body: some View {
        ZStack {
            Image("GameBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
            VStack {
                Spacer()
                NavigationLink(destination: {
                    GameView()
                }) {
                    Text("Game")
                        .foregroundColor(.black)
                        .font(.system(size: 60, weight: .medium, design: .rounded))
                }
                Text("Status")
                    .font(.system(size: 30, weight: .light, design: .rounded))
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct OrderPartOfTabHomeView: View {
    var body: some View {
        ZStack {
            Image("OrderBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea(.all)
                .frame(maxWidth: UIScreen.main.bounds.width, maxHeight: UIScreen.main.bounds.height)
            VStack {
                Spacer()
                NavigationLink(destination: {
                    OrderView()
                }) {
                    Text("Order")
                        .foregroundColor(.black)
                        .font(.system(size: 60, weight: .medium, design: .rounded))
                }
                Text("Status")
                    .font(.system(size: 30, weight: .light, design: .rounded))
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}
