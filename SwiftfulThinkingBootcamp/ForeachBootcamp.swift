import SwiftUI
import UIKit

struct ForeachBootcamp: View {
    let datas: [String] = ["Hi", "How", "Are"]
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 10) {
                    ForEach(0..<12) { index in
                        Rectangle()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.blue)
                    }
                }
            }
            
            VStack {
                ForEach(1..<20){
                    index in Text("Hello \(index)").frame(
                        height: 30)
                }
                Spacer()
                        .frame(height: 10)
                ForEach(datas.indices){
                    index in Text("\(datas[index]) index: \(index)")
                }
                    
            }
        }
        
    }
}

struct ForeachBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ForeachBootcamp()
    }
}
