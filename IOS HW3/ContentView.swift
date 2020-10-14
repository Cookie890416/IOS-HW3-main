//
//  ContentView.swift
//  huge_test
//
//  Created by User10 on 2020/10/11.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    var body: some View {
            VStack {
                Text("五月天").font(.system(size:40)).fontWeight(.heavy)+Text("May Day").font(.system(size:32)).fontWeight(.heavy).italic()
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
                Link("五月天演唱會", destination: URL(string: "https://www.livenation.com.tw/artist/mayday-%E4%BA%94%E6%9C%88%E5%A4%A9-tickets")!)
                    .foregroundColor(Color.red)
                Text("「摸不到的顏色是否叫彩虹」\n「看不到的擁抱是否叫做微風」\n「一個人想著一個人是否就叫寂寞」")
                    .font(.custom("YuppyTC-Regular",size:22))
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
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
            .frame(width: 380, height: 380)
    }
}

