//
//  WithAnimationView.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/13.
//

import SwiftUI

struct WithAnimationView: View {
  @State var selected: Bool = false
  @State var shouldStartBeat: Bool = false

  var body: some View {
    VStack(alignment: .leading) {
      Button("Start Animation", action: {
        withAnimation(.easeInOut) {
          self.selected.toggle()
        }
      }).frame(maxWidth: .infinity)
      RoundedRectangle(cornerRadius: 10)
        .fill(selected ? Color.blue : .green)
        .frame(width: 50, height: 50)
        .offset(x: selected ? 300 : 0, y: 0)
      RoundedRectangle(cornerRadius: 10)
        .fill(selected ? Color.orange : .yellow)
        .frame(width: 50, height: 50)
        .offset(x: selected ? 300 : 0, y: 0)
//        .animation(nil, value: selected)

//      Button("Start beat", action: {
//        withAnimation(.easeInOut) {
//          self.shouldStartBeat = true
//        }
//      }).frame(maxWidth: .infinity)
//      HStack {
//        Image(systemName: "suit.heart.fill")
//          .resizable()
//          .scaledToFit()
//          .foregroundColor(.red)
//          .frame(width: 50, height: 50, alignment: .center)
//          .scaleEffect(self.shouldStartBeat ? 0.5: 1)
//          .animation(Animation.linear(duration: 0.5).speed(0.5).repeatForever(), value: shouldStartBeat)
//          .padding()
//      }.frame(maxWidth: .infinity)
      Spacer()
    }
    .padding()
  }
}

struct WithAnimationView_Previews: PreviewProvider {
  static var previews: some View {
    WithAnimationView()

  }
}
