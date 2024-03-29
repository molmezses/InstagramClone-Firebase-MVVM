//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 25.02.2024.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            Text("Upload")
                .tabItem {
                    Image(systemName: "plus.square")
                }
            Text("Notifactions")
                .tabItem {
                    Image(systemName: "heart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
