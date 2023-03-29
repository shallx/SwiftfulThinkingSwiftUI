import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello Earth")
//            .font(.title)
            .kerning(2)
            .underline()
            .italic()
            .frame(width: 200, height: 100, alignment: .center)
            .border(.black, width: 3)
            .padding(.leading, 4)
            .multilineTextAlignment(.center)
            .foregroundColor(.green)
            .font(.system(size: 20, weight: .heavy, design: .rounded))
            .minimumScaleFactor(0.1)
    }
}

struct TextBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextBootcamp()
    }
}
