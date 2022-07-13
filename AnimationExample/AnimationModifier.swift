//
//  AnimationModifier.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/13.
//

import SwiftUI

struct AnimationModifier: View {
  @State var selected: Bool = false

  var body: some View {
    VStack(alignment: .leading, spacing: 20) {
      Button("Animation", action: {
        self.selected.toggle()
      }).frame(maxWidth: .infinity)

      Text("No")
        .frame(width: 50, height: 50)
        .background(selected ? Color.blue : .green)
        .offset(x: selected ? 300 : 0, y: 0)
      
      Text("default")
        .frame(width: 50, height: 50)
        .background(selected ? Color.blue : .green)
        .offset(x: selected ? 300 : 0, y: 0)
        .animation(.default, value: selected)

      Text("linar")
        .frame(width: 50, height: 50)
        .background(selected ? Color.blue : .green)
        .offset(x: selected ? 300 : 0, y: 0)
        .animation(.linear, value: selected)

      Text("easing")
        .frame(width: 50, height: 50)
        .background(selected ? Color.blue : .green)
        .offset(x: selected ? 300 : 0, y: 0)
        .animation(.easeInOut, value: selected)

      Text("spring")
        .frame(width: 50, height: 50)
        .background(selected ? Color.blue : .green)
        .offset(x: selected ? 300 : 0, y: 0)
        .animation(.spring(), value: selected)

      Spacer()
    }
    .padding()
  }
}

struct AnimationModifier_Previews: PreviewProvider {
  static var previews: some View {
    AnimationModifier()
  }
}
