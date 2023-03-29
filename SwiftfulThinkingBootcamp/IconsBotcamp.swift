//
//  IconsBotcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by PerPlexis on 30/3/23.
//

import SwiftUI

struct IconsBotcamp: View {
    var body: some View {
        
        VStack{
            Image(systemName: "heart.fill")
    //            .font(.title)
                .font(.system(size: 100))
                .foregroundColor(.red)
            
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.red)
                .frame(width: 240, height: 200)
                .clipped()
            
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                .font(.largeTitle)
                .foregroundColor(.blue)
        }
    }
}

struct IconsBotcamp_Previews: PreviewProvider {
    static var previews: some View {
        IconsBotcamp()
    }
}
