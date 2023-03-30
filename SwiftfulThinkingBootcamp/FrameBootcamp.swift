import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(Color.green)
            .frame(maxWidth: 200,maxHeight: 200)
            .background(.red)
            .frame(height: 300)
            .background(.blue)
            .frame(maxWidth: .infinity,maxHeight: 200, alignment: .bottomLeading)
            .background(.yellow)
    }
}

struct FrameBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        FrameBootcamp()
    }
}
