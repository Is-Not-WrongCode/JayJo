//
//  horizontalView.swift
//  Karrot_ViewStudy
//
//  Created by 조한동 on 2023/06/20.
//

import SwiftUI

struct horizontalView: View {
    var body: some View {
        VStack {
            HStack {
                Text("무더운 여름, 미리 대비해요.")
                    .fontWeight(.bold)
                    .font(.system(size: 17))
                    Spacer()
                Image("rightArrow")
            } //HStack
            .padding(.all, 16)
            
                ScrollView(.horizontal) {
                    HStack {
                        ForEach(sideImages.indices) { index in
                            horizontalProduct(sideImage: sideImages[index])
                        }
                    }
                } //ScrollView
        } //VStack
    }
}

struct horizontalProduct: View {
    let sideImage: [String: String]
    var body: some View {
        VStack {
            Image(sideImage["image"] ?? "default")
                .resizable()
                .frame(width: 120, height: 120)
            Text(sideImage["title"] ?? "")
                .frame(width: 120)
                .lineLimit(3)
                .truncationMode(.tail)
            Text(sideImage["price"] ?? "")
        }
    }
}

struct horizontalView_Previews: PreviewProvider {
    static var previews: some View {
        horizontalView()
    }
}
