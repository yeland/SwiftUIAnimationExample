//
//  ContentView.swift
//  AnimationExample
//
//  Created by Linxiao on 2022/7/13.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List {
        NavigationLink(destination: WithAnimationView()) { Text("WithAnimation") }
        NavigationLink(destination: AnimationModifier()) { Text("AnimationModifier") }
        NavigationLink(destination: AnimationDelay()) { Text("AnimationDelay") }
        NavigationLink(destination: Transition()) { Text("Transition") }
        NavigationLink(destination: MatchedGeometryEffect()) { Text("MatchedGeometryEffect") }
      }
      .navigationBarTitle("Animations")
      .navigationBarTitleDisplayMode(.inline)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
