import SwiftUI

struct StackBootcamp: View {
    let title: String
    let backgroundColor: Color = .yellow
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text(title)
                .background(backgroundColor)
                .padding()
                .background(.blue)
                .padding(EdgeInsets(top: 10, leading: 15, bottom: 20, trailing: 25))
                .background(.yellow)
        }
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp(title: "Hello Earth")
    }
}
