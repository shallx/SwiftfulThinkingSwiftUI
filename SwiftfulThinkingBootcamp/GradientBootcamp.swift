//
//  GradientBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Macuser on 29/03/2023.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        VStack(){
            RoundedRectangle(cornerRadius: 26)
                .fill(
                    LinearGradient(gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color.pink]), startPoint: .leading, endPoint: .trailing)
                )
                .frame(width: 300, height: 140)
            
            RoundedRectangle(cornerRadius: 26)
                .fill(RadialGradient(gradient: Gradient(colors: [Color.red, Color.yellow]), center: .leading, startRadius: 5, endRadius: 200))
                .frame(width: 300, height: 150)
            RoundedRectangle(cornerRadius: 26)
                .fill(
                    AngularGradient(gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color.pink]), center: .topLeading, angle: .degrees(180 + 45))
                    
                )
                .frame(width: 300, height: 150)
        }
    }
}

struct GradientBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradientBootcamp()
    }
}
