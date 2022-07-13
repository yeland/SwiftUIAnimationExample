//
//  MatchedGeometryEffect.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/14.
//

import SwiftUI

struct MatchedGeometryEffect: View {
  @State var state: Bool = false
  @Namespace var shared

  var body: some View {
    VStack {
      HStack {
        if !state {
          Rectangle().fill(.blue)
            .matchedGeometryEffect(id: "1", in: shared)
            .frame(width: 200, height: 200)
        }
        Spacer()
        if state {
          Circle().fill(.blue)
            .matchedGeometryEffect(id: "1", in: shared)
            .frame(width: 100, height: 100)
        }
      }
      .border(Color.black)
      .frame(width: 300, height: 200)
      Toggle("", isOn: $state)
    }
    .animation(.default, value: state)
  }
}

struct MatchedGeometryEffect_Previews: PreviewProvider {
  static var previews: some View {
    MatchedGeometryEffect()
  }
}
