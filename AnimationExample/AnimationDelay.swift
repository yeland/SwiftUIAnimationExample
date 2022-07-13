//
//  Delay.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/14.
//

import SwiftUI

struct AnimationDelay: View {
  @GestureState var isDetectingLongPress = false
  let letters = Array("Hello, SwiftUI")
  @State private var enabled = false
  @State private var dragAmount = CGSize.zero

  var body: some View {
    HStack(spacing: 0) {
      ForEach(0..<letters.count) { index in
        Text(String(letters[index]))
          .padding(5)
          .font(.title)
          .background(enabled ? .blue : .red)
          .offset(dragAmount)
          .animation(.default.delay(Double(index) / 20), value: dragAmount)
      }
    }
    .gesture(
      DragGesture()
        .onChanged{ dragAmount = $0.translation }
        .onEnded { _ in
          dragAmount = .zero
          enabled.toggle()
        }
    )
  }
}

struct AnimationDelay_Previews: PreviewProvider {
  static var previews: some View {
    AnimationDelay()
  }
}
