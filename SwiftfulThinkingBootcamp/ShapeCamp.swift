//
//  ShapeCamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct ShapeCamp: View {
    var body: some View {
//        Ellipse()
//        Capsule(style: .circular)
//        Circle()
        Rectangle()
            .trim(from: 0.5, to: 1)
            .fill(Color.blue)
            .frame(width: 200, height: 200)
//            .stroke(.red, style: StrokeStyle(lineWidth: 4,
//                lineCap: .butt, dash: [10,10]))
            
    }
}

struct ShapeCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeCamp()
    }
}
