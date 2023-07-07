//
//  WebtoonInformationView.swift
//  NaverWebToon_View
//
//  Created by 조한동 on 2023/07/04.
//

import SwiftUI

struct WebtoonInformationView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Image("cover1")
            Text("재벌집 막내아들")
                .font(.system(size: 13))
                .multilineTextAlignment(.leading)
            HStack {
                Text("JP / 김병관 / 산경")
                    .multilineTextAlignment(.leading)
                    .truncationMode(.tail)
                    .font(.system(size: 8.5))
                Text("⭑9.97")
                    .font(.system(size: 10))
            }
            .foregroundColor(.secondary)
            
        }
        .frame(width: 112, height: 184)
    }
}

//func informationSize() -> CGFloat {
//    return frame.size.width / 5
//}

struct WebtoonInformationView_Previews: PreviewProvider {
    static var previews: some View {
        WebtoonInformationView()
    }
}
