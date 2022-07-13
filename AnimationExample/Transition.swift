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
      if isShow {
        Circle()
          .frame(width: 100, height: 100)
          .foregroundColor(Color.pink)
          .transition(.offset(x: 50, y: 50))
      }
    }
    .animation(.easeInOut, value: isShow)
    .frame(maxWidth:.infinity, maxHeight: .infinity, alignment: .top)
  }
}

struct Transition_Previews: PreviewProvider {
  static var previews: some View {
    Transition()
  }
}
