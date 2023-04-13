//
//  ShimmerView.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Macuser on 10/04/2023.
//

import SwiftUI

struct ShimmerView: View {
    var body: some View {
        List {
          ForEach (0..<10) { _ in
            HStack {
              Image(systemName: "star.fill")
              Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam")
            }
            .redacted(reason: .placeholder)
          }
        }
      }
}

struct ShimmerView_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerView()
    }
}

