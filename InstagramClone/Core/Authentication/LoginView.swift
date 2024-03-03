//
//  LoginView.swift
//  InstagramClone
//
//  Created by Mustafa Ölmezses on 4.03.2024.
//

import SwiftUI

struct LoginView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        NavigationStack{
            Spacer()
            Image("InstagramLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 220, height: 100)
            VStack{
                TextField("E-Mail : ", text: $email)
                    .textInputAutocapitalization(.none)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
                SecureField("Password : ", text: $password)
                    .font(.subheadline)
                    .padding(12)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .padding(.horizontal)
            }
            
            Button(action: {
                print("Login Button Clicked")
            }, label: {
                Text("Login")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(lineWidth: 2)
                    )
                    .padding()
            })
            
            //Fargot Button
            
            Button(action: {
                
            }, label: {
                Text("Forget password?")
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity , alignment: .trailing)
                    .padding(.horizontal)
                    .font(.subheadline)
            })
            
            //OR
            HStack{
                Rectangle()
                    .frame(height: 0.5)
                Text("OR")
                Rectangle()
                    .frame(height: 0.5)
            }
            .padding(.horizontal)
            .foregroundStyle(.gray)
            
            //SİGN İN TO GOOGLE
            
            HStack{
                Image("GoogleLogo")
                    .resizable()
                    .frame(width: 40 , height: 40)
                Text("Continue with Google")
                    .font(.footnote)
                    .fontWeight(.semibold)
        
            }
            .padding(.top)
            
            Spacer()
            
            Divider()
            NavigationLink{
                Text("Sign Up")
            }label: {
                HStack{
                    Text("Don't have an account ? ")
                    Text("Sign Up!")
                        .bold()
                }
            }
            .padding(.vertical)
        }
        
    }
}

#Preview {
    LoginView()
}
