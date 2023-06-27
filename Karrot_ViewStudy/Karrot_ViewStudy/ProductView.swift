//
//  ProductView.swift
//  Karrot_ViewStudy
//
//  Created by 조한동 on 2023/06/16.
//

import SwiftUI

struct ProductView: View {
    @State var chatNum : Int
    @State var likeNum : Int
    let product: [String: String]
    
    var body: some View {
        HStack {
            Image(product["image"] ?? "defalut")
                .resizable()
                .frame(width: 120, height: 120)
                .foregroundColor(.orange)
                .cornerRadius(6)
                .padding(.all, 16)
            VStack(alignment: .leading, spacing: 4) {
                Text(product["text"] ?? "")
                    .font(.system(size: 16))
                Text(product["location"] ?? "")
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                Text(product["price"] ?? "")
                    .fontWeight(.heavy)
                    .font(.system(size: 16))
                HStack {
                    Spacer()
                    HStack(spacing: 3) {
                        if chatNum > 0 {
                            Image("chatSymbol")
                                .resizable()
                                .frame(width: 15, height: 15)
                                .opacity(0.7)
                            Text("\(chatNum)")
                                .foregroundColor(.secondary)

                        }
                        if likeNum > 0 {
                            Image("likeSymbol")
                                .resizable()
                                .frame(width: 15, height: 15)
                            Text("\(likeNum)")
                                .foregroundColor(.secondary)

                        }
                    }
                }
            }
        } //HStack
        .padding(.trailing, 16)
        Divider()
            .frame(width: 350)
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView(chatNum: 3, likeNum: 5, product: ["image": "1", "text": "제목1", "location": "송파구 오금동·2분 전", "price": "200,000원"])
        
    }
}
