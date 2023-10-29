//
//  SignInView.swift
//  MyThirdApp
//
//  Created by ABDULRAHMAN AL-KHALED on 28/10/2023.
//

import SwiftUI

struct PrimaryButton: View{
    var title: String
    var body: some View{
        Text(title)
            .font(.title3)
            .fontWeight(.bold)
            .foregroundStyle(Color("Color 2"))
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color(.white))
            .cornerRadius(50)
    }
}
struct WelcomePage: View {
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
            VStack{
                Text("Welcome!")
                    .font(.largeTitle)
                    .bold()
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                NavigationLink(
                    destination: {
                        SignInView()
                    },
                    label: {
                        ZStack{
                            PrimaryButton(title: "Login")
                            
                        }
                    }
                )
                .padding(30)
                HStack{
                    Text("Or")
                        .foregroundStyle(.white)
                    Text("Create an account")
                        .underline()
                        .foregroundStyle(.white)
                }
            }
        }
    }
}

#Preview {
    WelcomePage()
}
