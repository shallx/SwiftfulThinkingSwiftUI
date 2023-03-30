import SwiftUI

struct StackBootcamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10){
            Text("Hello")
                .background(.yellow)
                .padding()
                .background(.blue)
        }
    }
}

struct StackBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StackBootcamp()
    }
}
