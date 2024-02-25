//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 25.02.2024.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible() , spacing: 1),
        .init(.flexible() , spacing: 1),
        .init(.flexible() , spacing: 1),
    ]
    
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack{
                    
                    //Profil card
                    
                    HStack{
                        Image("ProfileImage")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80 , height: 80)
                            .clipShape(Circle())
                        Spacer()
                        //userstats
                        HStack{
                            UserStatView(value: 23, title: "Posts")
                            UserStatView(value: 324, title: "Fallowers")
                            UserStatView(value: 89, title: "Fallowing")
                        }
                    }
                    .padding(.horizontal)
                    
                    //Name and Description
                    
                    VStack(alignment:.leading){
                        Text("Mustafa Ölmezses")
                            .font(.subheadline)
                            .bold()
                        Text("Hello everyone. I'm a IOS Developer")
                            .font(.footnote)
                            .padding(.bottom , 4)
                    }
                    .frame(maxWidth: .infinity , alignment: .leading)
                    .padding(.horizontal)
                    
                    
                    //editProfileButton
                    
                    Button(action: {}, label: {
                        Text("Edit Profile")
                            .padding(.vertical , 4)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(lineWidth: 2)
                            )
                            .padding(.horizontal)
                            .fontWeight(.semibold)
                    })
                    
                    Divider()
                    //Posts
                    LazyVGrid(columns:gridItems , spacing: 1){
                        ForEach(0...20 , id:  \.self){ index in
                            Image("PostImage")
                                .resizable()
                                .scaledToFill()
                        }
                    }
                    .navigationTitle("MyProfile")
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
                            Image(systemName: "line.3.horizontal")
                        }
                    }
                    
                }
            }
        }
    }
}

#Preview {
    ProfileView()
}
