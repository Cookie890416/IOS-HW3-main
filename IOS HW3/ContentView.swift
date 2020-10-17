//
//  ContentView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var message = "I love MayDay"
    var body: some View {
            VStack {
                Text("五月天").font(.system(size:40)).fontWeight(.heavy).underline()+Text("May Day").font(.system(size:32)).fontWeight(.heavy).italic()
                VStack{
                    if show{
                        ImageView()
                            .transition(.opacity)
                    }
                }.animation(.easeInOut(duration:5))
                    .onAppear {
                        self.show = true
                }
                .onDisappear {
                    self.show = false
                }
                Text("留言板").foregroundColor(Color("黛綠"))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.purple)
                    .font(.system(size:32))
                TextEditor(text: $message)
                    .frame(width: 150, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2))
                
                Text("「摸不到的顏色是否叫彩虹」\n「看不到的擁抱是否叫做微風」\n「一個人想著一個人是否就叫寂寞」")
                    
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding()
                       .background(LinearGradient(gradient: Gradient(colors: [Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(30)
                Spacer()
                    .padding(.bottom,0)
            }
            .foregroundColor(Color.blue)
            .offset(y:60)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct ImageView: View {
    var body: some View {
        Image("五月天")
            .resizable()
            .scaledToFit()
            .frame(width: 270, height: 270)
            .saturation(5)
    }
}

