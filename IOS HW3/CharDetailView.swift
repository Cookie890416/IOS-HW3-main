//
//  CharDetailView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct CharDetailView: View {
    var Char : characters
    var body: some View {
        ScrollView{
            VStack{
                Singername(Char:Char)
                Spacer()
                Text("人物簡介")
                    .font(.title)
                Spacer()
                Text(Char.Intro)
                    .padding()
                    .font(.title)
                    .multilineTextAlignment(.leading)
            }
            .navigationBarTitle(Char.Ch_name)
        }
    }
}

struct CharDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharDetailView(Char:role[1])
    }
}


struct Singername: View {
    var Char : characters
    var body: some View {
        Image(Char.Ch_name)
            .resizable()
            .frame(width:400, height:400)
    }
}
