import SwiftUI

struct ExtractedSubview: View {
    var body: some View {
        ZStack {
            Color.yellow.ignoresSafeArea()
            HStack{
                MySubView(title: "Apple", count: 1, color: Color.red)
                MySubView(title: "Orange", count: 2, color: Color.orange)
                MySubView(title: "Eggplant", count: 2, color: Color.purple )
            }
            
        }
    }
}

struct ExtractedSubview_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedSubview()
    }
}

struct MySubView: View {
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
