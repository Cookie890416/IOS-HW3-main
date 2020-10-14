//
//  AppView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        ZStack{
            TabView {
                ContentView()
                    .tabItem{
                        Image(systemName:"house.fill")
                        Text("主頁")
                }
                CharacterView()
                    .tabItem{
                        Image(systemName:"person.3.fill")
                        Text("角色介紹")
                }
                
            }
            .accentColor(.purple)
            
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

