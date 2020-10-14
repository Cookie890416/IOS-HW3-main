//
//  CharacterView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct CustomeHeader: View {
    let name: String
    let red:Double
    let green:Double
    let blue:Double
    var body: some View {
        ZStack {
            Color(red: red/255, green: green/255, blue: blue/255).edgesIgnoringSafeArea(.all)
            HStack {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(Color.black)
                Spacer()
            }
            .frame(width: 370)
            Spacer()
        }.frame(width:410, height: 33)
    }
}

struct CharacterView: View {
    var body: some View {
        NavigationView
        {
            List {
                
                Section(header: CustomeHeader(name:"成員",red:245,green:219,blue:79)){
                    ForEach(0..<role.count){(index) in
                        NavigationLink(destination: CharDetailView(Char: role[index])){
                            CharacterRowView(Char: role[index])
                        }}}
                Section(header: CustomeHeader(name:"粉絲",red:245,green:219,blue:79)){
                    ForEach(0..<fans.count){(index) in
                        NavigationLink(destination: CharDetailView(Char: fans[index])){
                            CharacterRowView(Char: fans[index])
                        }}}
                    
                
                    
                
            }
            
        }
        .navigationBarTitle("角色介紹")
        .padding(.bottom,80)
    }
}


struct CharacterView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterView()
    }
}

