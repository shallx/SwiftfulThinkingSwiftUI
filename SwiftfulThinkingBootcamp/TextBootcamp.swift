import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello Earth")
//            .font(.title)
//            .fontWeight(.heavy)
//            .underline()
//            .italic()
            
            .frame(width: 200, height: 100, alignment: .center)
            .border(.black, width: 3)
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
