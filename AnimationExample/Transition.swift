//
//  Transition.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/14.
//

import SwiftUI

struct Transition: View {
  @State var isShow = false

  var body: some View {
    VStack(alignment:.center, spacing: 50) {
      Button("Clicked ME") {
        self.isShow.toggle()
      }

      ZStack {
        Circle()
          .frame(width: 100, height: 100)
          .foregroundColor(Color.green)
          .border(.black, width: 1)
          .zIndex(0)

        if isShow {
          Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(Color.pink)
            .transition(.offset(x: 50, y: 50).combined(with: .opacity))
//            .transition(.asymmetric(insertion: .slide, removal: .opacity))
            .zIndex(1)
        }
      }
      .animation(.easeInOut, value: isShow)
    }
    .frame(width: 400, height: 400, alignment: .top)
    .border(.black, width: 1)
  }
}

struct Transition_Previews: PreviewProvider {
  static var previews: some View {
    Transition()
  }
}
