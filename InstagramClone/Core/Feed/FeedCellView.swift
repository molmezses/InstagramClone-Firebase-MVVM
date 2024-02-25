//
//  FeedCellView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 26.02.2024.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack{
            // Profil photos and username
            HStack{
                Image("ProfileImage")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 46 , height: 46)
                    .clipShape(Circle())
                Text("Molmezses")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                Spacer()
                Image(systemName: "ellipsis")
                    .imageScale(.large)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal , 8)
            //POST IMAGE
            Image("PostImage")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            //ACTİON BUTTONS
            HStack{
                Button(action: {}, label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                })
                Button(action: {}, label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                })
                Button(action: {}, label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                })
                Spacer()
                Text("21.09.2024")
                    .font(.footnote)
                    .foregroundStyle(.gray)
            }
            .padding(.horizontal)
            .padding(.top , 2)
            //LIKE COUNT
            Text("300 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.leading)
                .padding(.top , 1)
            
            //DESCRİPTİON
            HStack{
                Text("Molmezses")
                    .font(.footnote)
                    .fontWeight(.semibold)
                +
                Text(" ")
                +
                Text("Lorem ipsum sit dolor amet dolor actencular etes color")
                    .font(.footnote)
                
            }
            .frame(maxWidth: .infinity , alignment: .leading)
            .padding(.horizontal)
            Text("14 Yorumun tümünü gör")
                .font(.footnote)
                .foregroundStyle(.gray)
                .frame(maxWidth: .infinity , alignment: .leading)
                .padding(.horizontal)
        }
    }
}

#Preview {
    FeedCellView()
}
