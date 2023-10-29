//
//  ContentView.swift
//  MyThirdApp
//
//  Created by ABDULRAHMAN AL-KHALED on 28/10/2023.
//


// Sheets
// Animations
// Transitions
import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
        }
       
        .onAppear(){
            UITabBar.appearance().backgroundColor = .white
        }
    }
}

#Preview {
    ContentView()
}
