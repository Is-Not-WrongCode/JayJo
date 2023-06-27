//
//  NewPostButtonView.swift
//  Karrot_ViewStudy
//
//  Created by 조한동 on 2023/06/27.
//

import SwiftUI

struct NewPostButtonView: View {
    var body: some View {
        NavigationLink(destination: Text("판매글 작성화면")) {
            ZStack {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(.karrotColor)
                    .shadow(radius: 8)
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.white)
            }
        }
    }
}

struct NewPostButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostButtonView()
    }
}
