//
//  ImageBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by PerPlexis on 30/3/23.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        VStack{
            Image("goku")
                .resizable()
                .scaledToFill()
                .frame(width: 300, height: 300)
    //            .cornerRadius(150)
                .clipShape(
    //                Circle()
    //                Ellipse()
                    RoundedRectangle(cornerRadius: 26.0)
                )
            Image("google")
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.green)
        }
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
