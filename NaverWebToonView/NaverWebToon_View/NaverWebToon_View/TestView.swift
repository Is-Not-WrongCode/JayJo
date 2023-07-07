//
//  TestView.swift
//  NaverWebToon_View
//
//  Created by 조한동 on 2023/07/08.
//

import SwiftUI

struct TestView: View {
    
    var title: String
    
    var body: some View{
        
        
        VStack {
            Text(title)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(Color.black)
        }
        
    }
}

struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView(title : "TestView")
    }
}
