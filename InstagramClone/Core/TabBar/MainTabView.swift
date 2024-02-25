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
            Text("Feed")
                .tabItem {
                    Image(systemName: "house")
                }
            Text("Search")
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
            Text("Profile")
                .tabItem {
                    Image(systemName: "person")
                }
        }
    }
}

#Preview {
    MainTabView()
}
