//
//  DaySelectView.swift
//  NaverWebToon_View
//
//  Created by 조한동 on 2023/07/08.
//

import SwiftUI

enum TabIndex {
    case new, mon, tue, wed, thu, fri, sat, sun, plus, complete
}

struct DaySelectView: View {
    @State var tabIndex : TabIndex
    
    func changeDayWebtoon(tabIndex: TabIndex) -> TestView {
        switch tabIndex {
        case .new:
            return TestView(title: "신작뷰")
        case .mon:
            return TestView(title: "월요일뷰")
        case .tue:
            return TestView(title: "화요일뷰")
        case .wed:
            return TestView(title: "수요일뷰")
        case .thu:
            return TestView(title: "목요일뷰")
        case .fri:
            return TestView(title: "금요일뷰")
        case .sat:
            return TestView(title: "토요일뷰")
        case .sun:
            return TestView(title: "일요일뷰")
        case .plus:
            return TestView(title: "매일플러스뷰")
        case .complete:
            return TestView(title: "완결뷰")
        default:
            return TestView(title: "신작뷰")
        }
    }
    
//    func changeTextColor(tabIndex: TabIndex) -> Color {
//    case .new:
//        return Color.green
//    }
    
    func calcUnderBarPosition(tabIndex: TabIndex, geo: GeometryProxy) -> CGFloat {
        switch tabIndex {
        case .new:
            return -(geo.size.width / 2.3)
        case .mon:
            return -(geo.size.width / 3.15)
        case .tue:
            return -(geo.size.width / 4.5)
        case .wed:
            return -(geo.size.width / 8.5)
        case .thu:
            return (-10)
        case .fri:
            return -(geo.size.width / 10)
        case .sat:
            return -(geo.size.width / 10)
        case .sun:
            return -(geo.size.width / 10)
        case .plus:
            return -(geo.size.width / 10)
        case .complete:
            return -(geo.size.width / 10)
        default:
            return -(geo.size.width / 10)
        }
    }
    
    var body: some View {
        GeometryReader { geo in
            ZStack(alignment: .bottom) {
                
//                self.changeDayWebtoon(tabIndex: self.tabIndex)
                
                VStack(spacing: 0) {
                    ScrollView(.horizontal) {
                        HStack(spacing: 24) {
                            Button(action: {withAnimation{
                                self.tabIndex = .new}})
                            {
                                Text("신작")
                                    .foregroundColor(self.tabIndex == .new ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .mon}})
                            {
                                Text("월")
                                    .foregroundColor(self.tabIndex == .mon ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .tue}})
                            {
                                Text("화")
                                    .foregroundColor(self.tabIndex == .tue ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .wed}})
                            {
                                Text("수")
                                    .foregroundColor(self.tabIndex == .wed ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .thu}})
                            {
                                Text("목")
                                    .foregroundColor(self.tabIndex == .thu ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .fri}})
                            {
                                Text("금")
                                    .foregroundColor(self.tabIndex == .fri ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .sat}})
                            {
                                Text("토")
                                    .foregroundColor(self.tabIndex == .sat ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .sun}})
                            {
                                Text("일")
                                    .foregroundColor(self.tabIndex == .sun ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .plus}})
                            {
                                Text("매일+")
                                    .foregroundColor(self.tabIndex == .plus ? .green : .white)
                            }
                            Button(action: {withAnimation{
                                self.tabIndex = .complete}})
                            {
                                Text("완결")
                                    .foregroundColor(self.tabIndex == .complete ? .green : .white)
                            }
                        }
                        .padding(10)
                        .background(Color.black)
                    }
                }
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 20, height: 2.5)
                    .offset(x: self.calcUnderBarPosition(tabIndex: self.tabIndex, geo: geo), y: -3)
            }
        }
    }
}

struct DaySelectView_Previews: PreviewProvider {
    static var previews: some View {
        DaySelectView(tabIndex: .new)
    }
}
