//
//  ContentView.swift
//  NaverWebToon_View
//
//  Created by 조한동 on 2023/07/03.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            DaySelectView(tabIndex: .new)
            WebtoonInformationView()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
