//
//  AlbumView.swift
//  IOS HW3
//
//  Created by User10 on 2020/10/15.
//

import SwiftUI

struct AlbumView: View {
    let photo = [
        "1",
        "2",
        "3",
        "4",
        "5",
        "6"
    ]
    
    let albums = [
        "五月天第一張創作專輯",
        "愛情萬歲",
        "人生海海",
        "時光機",
        "神的孩子都在跳舞",
        "為愛而生",
        "後青春期的詩",
        "第二人生",
        "自傳"
    ]
    let song=[
        "https://www.kkbox.com/tw/tc/album/NQxx5jTL5w8-0Ev0F8es008l-index.html",
        "https://www.kkbox.com/tw/tc/album/opztMoDxU93GIuc0FAyy008l-index.html",
        "https://www.kkbox.com/tw/tc/album/c7JuBBNS7Tr6rz00F8fa008l-index.html",
        "https://www.kkbox.com/tw/tc/album/AO3gHhevRUR5Gz80FBdm008l-index.html",
        "https://www.kkbox.com/tw/tc/album/Fn466x4n7XzSHL.0FCyW008l-index.html",
        "https://www.kkbox.com/tw/tc/album/JcH8E8WBdaey.fi0FKYU008l-index.html",
        "https://www.kkbox.com/tw/tc/album/jVaDUZ0lAyKmK1r0FR9P008l-index.html",
        "https://www.kkbox.com/tw/tc/album/7ISbg6jfRdB3PT0F1BjI0091-index.html",
        "https://www.kkbox.com/tw/tc/album/LkYUjLWHR0ueKJ0FvKA30091-index.html",
    ]
    var body: some View {
        List {
            
            Section(header: CustomeHeader(name:"團體照",red:245,green:219,blue:79)){
                //photo
                ScrollView(.horizontal) {
                    let rows = [GridItem()]
                    LazyHGrid(rows: rows) {
                        ForEach(photo.indices) { (index) in
                            VStack {
                                Image(photo[index])
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 150, height: 150)
                                    .clipped()
                            }
                            .overlay(
                                Image(systemName: "\(index+1).circle.fill")
                                    .font(.largeTitle)
                                , alignment: .topLeading)
                        }
                    }
                    
                }
                .fixedSize(horizontal: false, vertical: true)
            }
            Section(header: CustomeHeader(name:"專輯",red:245,green:219,blue:79)){
                //album
                ScrollView(.vertical) {
                    let columns = [
                        GridItem(),
                        GridItem()
                    ]
                    LazyVGrid(columns: columns) {
                        ForEach(albums.indices) { (index) in
                            VStack {
                                Rectangle()
                                    .aspectRatio(1, contentMode: .fit)
                                    .overlay(
                                        Image(albums[index])
                                            .resizable()
                                            .scaledToFill()
                                        
                                    )
                                    .clipped()
                                
                                Link(albums[index], destination: URL(string: song[index])!)
                                    .foregroundColor(Color.red)
                            }
                            .overlay(
                                Image(systemName: "\(index+1).circle.fill")
                                    .font(.largeTitle)
                                , alignment: .topLeading)
                        }
                    }
                    
                }
            }
        }
    }
}

struct AlbumView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumView()
    }
}
