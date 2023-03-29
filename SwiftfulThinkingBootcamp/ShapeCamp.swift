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
        RoundedRectangle(cornerRadius: 6)
//        Circle()
            .trim(from: 0.2, to: 1)
//            .stroke(.red, style: StrokeStyle(lineWidth: 4,
//                lineCap: .butt, dash: [10,10]))
            .frame(width: 300, height: 200)
    }
}

struct ShapeCamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapeCamp()
    }
}
