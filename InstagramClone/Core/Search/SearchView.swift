//
//  SearchView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 2.03.2024.
//

import SwiftUI

struct SearchView: View {
    
    @State var text  = ""
    
    var body: some View {
        
         NavigationStack{
            ScrollView{
                LazyVStack{
                    ForEach(0...20 , id: \.self){ user in
                        HStack{
                            Image("ProfileImage")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 40 , height: 40)
                                .clipShape(Circle())
                            VStack(alignment:.leading){
                                Text("Molmezses")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                Text("Mustafa Ölmezses")
                                    .font(.footnote)
                            }
                            Spacer()
                        }
                        .padding(.horizontal)
                        
                    }
                }
                .searchable(text: $text , prompt: "Search..")
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
        }

    }
}

#Preview {
    SearchView()
}
