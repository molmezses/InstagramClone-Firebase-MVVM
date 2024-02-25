//
//  FeedView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 26.02.2024.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...10, id: \.self){ post in
                        FeedCellView()
                    }
                }
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image("InstagramLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100 , height: 32)
                        .padding(.bottom , 4)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
