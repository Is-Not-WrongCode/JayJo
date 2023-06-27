//
//  ContentView.swift
//  Karrot_ViewStudy
//
//  Created by 조한동 on 2023/06/16.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    
    var body: some View {
        TabView(selection: $selectedTab) {
            NavigationView(){
                ZStack {
                    VStack{
                        ScrollView {
                            Divider()
                            ForEach(products.indices) { index in
                                let chatNum = RandomInt(min: 0, max: 6)
                                let likeNum = RandomInt(min: 1, max: 11)
                                ProductView(chatNum: chatNum, likeNum: likeNum, product: products[index])
                                
                                if index == 2 {
                                    horizontalView()
                                }
                            }
                            
                        }//ScrollView
                    } //VStack
                    .navigationBarItems(leading: Location(), trailing: Features())
                    VStack{
                        Spacer()
                        HStack{
                            Spacer()
                            NewPostButtonView()
                                .padding(.all, 16)
                        }
                    }
                } //ZStack
            } //NavigationView
            .tabItem {
                Image(selectedTab == 0 ? "home.fill" : "home")
                Text("홈")
            }
            .tag(0)
            
            Text("동네생활")
                .tabItem{
                    Image(selectedTab == 1 ? "life.fill" : "life")
                    Text("동네생활")
                }
                .tag(1)
            
            Text("내 근처")
                .tabItem{
                    Image(selectedTab == 2 ? "locate.fill" : "locate")
                    Text("내 근처")
                }
                .tag(2)
            
            Text("채팅")
                .tabItem{
                    Image(selectedTab == 3 ? "message.fill" : "message")
                    Text("채팅")
                }
                .tag(3)
            
            Text("나의 당근")
                .tabItem{
                    Image(selectedTab == 4 ? "my.fill" : "my")
                    Text("나의 당근")
                }
                .tag(4)
        } //TabView
        .tint(.black)
    }
}
//ContentView
struct Location: View {
    var body: some View {
        Button(action: {
        }){
            HStack(spacing: 3){
                Text("지곡동")
                    .font(.system(size: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                Image("expandMore")
                    .resizable()
                    .frame(width: 18, height: 18)
            }
        }
    }
}

struct Features: View {
    var body: some View {
        HStack(spacing: 5) {
            Button(action: {}) {
                Image("search")
            }
            Button(action: {}) {
                Image("threeLines")
            }
            Button(action: {}) {
                Image("bell")
            }
        }
    }
}
func RandomInt(min: Int, max: Int) -> Int {
    return Int.random(in: min...max)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
