import SwiftUI

struct DocumentationBootcamp: View {
    var range: [Int] = [1,2,3,4]
    var body: some View {
        VStack {
            ForEach(range, id: \.self){ num in
                Text("\(num)")
            }
        }
    }
}

struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}
