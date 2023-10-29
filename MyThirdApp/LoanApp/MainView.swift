//
//  MainView.swift
//  MyThirdApp
//
//  Created by ABDULRAHMAN AL-KHALED on 28/10/2023.
//

import SwiftUI

struct MainView: View {
  //  @Binding var progress: Float
    var color: Color = Color.green
    var body: some View {
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color("Color 1"), Color("Color 2")]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Home")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .center)
                        Image(systemName: "light.beacon.max")
                            .resizable()
                            .frame(width: 33, height: 30)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                    .padding()
                    // Spacer()
                    ZStack{
                        Circle()
                            .frame(width: 280).frame(maxWidth: .infinity, alignment: .top)
                            .foregroundColor(.white)
                            .padding()
                        VStack{
                            Text("""
                         Current Loan
                             balance
                         """)
                            Text("$500")
                                .font(.title)
                                .bold()
                                .foregroundStyle(Color("Color 2"))
                            Text("""
                                  Due to
                                1.15.2019
                                """)
                        }
                        Circle()
                            .stroke(lineWidth: 12)
                            .frame(width: 250)
                            .foregroundColor(Color.gray)
                        Circle()
                            .trim(from: 0.2, to: 1.0)

                            .stroke(lineWidth: 12)
                            .frame(width: 250)
                            .foregroundColor(Color("Color 3"))
                    }
                    Spacer()
                    ZStack{
                        Rectangle()
                            .frame(height: 260)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 0.5)
                        VStack{
                            Text("more details about your current loan")
                                .foregroundStyle(.gray)
                                .frame(maxWidth: .infinity,alignment: .leading)
                            ZStack{
                                RoundedRectangle(cornerRadius: 177)
                                    .frame(height: 35)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 10)
                                HStack{
                                    Text("Loan amount")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Text("$6000")
                                        .foregroundColor(Color("Color 2"))
                                }.padding(.horizontal)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 177)
                                    .frame(height: 35)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 10)
                                HStack{
                                    Text("Loan amount")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("$6000")
                                        .foregroundColor(Color("Color 2"))
                                }.padding(.horizontal)
                            }
                            ZStack{
                                RoundedRectangle(cornerRadius: 177)
                                    .frame(height: 35)
                                    .foregroundColor(Color.white)
                                    .shadow(radius: 10)
                                HStack{
                                    Text("Loan amount")
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                    Text("$6000")
                                        .foregroundColor(Color("Color 2"))
                                }.padding(.horizontal)
                                
                            }
                        }.padding(.horizontal)
                    }
                   
                }
                HStack{
                 //   Spacer()
                    ZStack{
                        RoundedRectangle(cornerRadius:12)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .frame(width: 120, height: 120)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        VStack{
                            Image(systemName: "wallet.pass.fill")
                                .foregroundColor(Color("Color 2"))
                                .frame(width: 50, height: 50)
                                .font(.title3)
                                .bold()
                            Text("make a loan payment")
                                
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: .infinity, alignment:.leading)
                            .padding()
                    }.offset(x: 50, y: 99)
                    ZStack{
                        RoundedRectangle(cornerRadius: 12)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                            .frame(width: 120, height: 120)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                        VStack{
                            Image(systemName: "doc.text.fill")
                                .foregroundColor(Color("Color 2"))
                                .frame(width: 50, height: 50)
                                .font(.title3)
                                .bold()
                              Text("""
                                   issue a new
                                   loan
                                   """)
                                .multilineTextAlignment(.center)
                        }.frame(maxWidth: .infinity, alignment:.trailing)
                            .padding()
                    } .offset(x: -50, y: 99)
                    
                }
            }
        }
    }

#Preview {
    MainView()
}
