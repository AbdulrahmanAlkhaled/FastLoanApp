//
//  SignInView.swift
//  MyThirdApp
//
//  Created by ABDULRAHMAN AL-KHALED on 28/10/2023.
//

import SwiftUI

struct SignInView: View {
    var email: String = ""
    var password: String = ""
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color("Color 1"), Color("Color 2")]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            
            VStack{
                Image(systemName: "coloncurrencysign")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white)
                Text("FastLoan")
                    .foregroundStyle(.white)
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .frame(maxWidth: .infinity, alignment: .center)
            .padding(.vertical)
            
            VStack {
                VStack {
                    TextField("", text: .constant(""))
                        .padding()
                        .frame(height: 40)
                        .foregroundColor(Color.white) // Change the color of the input text
                    
                        .overlay(
                            Text("Email")
                                .foregroundColor(Color.white.opacity(0.8)) // Change the color of the placeholder text
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        )
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.white.opacity(0.8))
                    
                    TextField("", text: .constant(""))
                        .padding()
                        .frame(height: 40)
                        .foregroundColor(Color.white.opacity(0.8))
                        .overlay(
                            Text("Password")
                                .foregroundColor(Color.white.opacity(0.8)) // Change the color of the placeholder text
                                .padding()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        )
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.white.opacity(0.8))
                    HStack{
                        Text("Forget password?")
                            .padding(.vertical)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                            .underline()
                            .foregroundStyle(.white)
                    }
                    NavigationLink(
                        destination: {
                            
                        },
                        label: {
                            ZStack{
                                PrimaryButton(title: "Login")
                                    .padding()
                            }
                        }
                    )
                    HStack{
                        Text("Dont have account?")
                            .foregroundStyle(.white)
                        Text(" Sign up")
                            .underline()
                            .foregroundStyle(.white)
                    }
                }
                .padding(.horizontal, 45)
            }
        }
    }
}

#Preview {
    SignInView()
}
