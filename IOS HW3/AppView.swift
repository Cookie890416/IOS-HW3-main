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
                        Text("人物介紹")
                    }
                AlbumView()
                    .tabItem{
                        Image(systemName:"music.note")
                        Text("專輯")
                    }
                FamousSayView()
                    .tabItem{
                        Image(systemName:"message")
                        Text("名言")
                    }
            }
            Music()
                .offset(y:290)
        }
    }
}


struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

