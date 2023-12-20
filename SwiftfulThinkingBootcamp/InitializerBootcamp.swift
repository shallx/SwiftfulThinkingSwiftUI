//
//  InitializerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Macuser on 30/11/2023.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let isEven: String
    let fruit: Fruit
    
    enum Fruit {
        case apple
        case orange
    }
    
    init(backgroundColor: Color, count: Int, fruit: Fruit){
        self.backgroundColor = backgroundColor
        self.count = count
        self.fruit = fruit
        
        if count % 2 == 0 {
            self.isEven = "Even"
        } else {
            self.isEven = "Odd"
        }
    }

    
    var body: some View {
        
        VStack {
            Text("\(count)")
                .underline()
                .font(.system(.largeTitle))
            Text("\(isEven) \(fruit == .apple ? "Apple" : "Orange")")
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(6)
    }
}

struct InitializerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        InitializerBootcamp(backgroundColor: .yellow, count: 5, fruit: .orange)
    }
}
