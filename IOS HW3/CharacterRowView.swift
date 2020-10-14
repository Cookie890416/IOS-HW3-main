//
//  CharacterRowView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct CharacterRowView: View {
    var Char : characters
    var body: some View {
        HStack(spacing:30){
            Image(Char.Ch_name)
                .resizable()
                .scaledToFill()
                .frame(width:100,height:100)
                .clipped()
                .mask(Circle())
                .shadow(radius: 10)
                .overlay(Circle().stroke(Color.white, lineWidth: 5))
            VStack(alignment: .leading){
                Text(Char.Ch_name)
            }
            Spacer()
        }
    }
}

struct CharacterRowView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterRowView(Char: role[0])
            .previewLayout(.fixed(width: 300, height: 100))
    }
}

