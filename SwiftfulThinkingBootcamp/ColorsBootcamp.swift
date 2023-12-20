import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 26)
//            .fill(Color("CustomColor"))
            .fill(
                Color(#colorLiteral(red: 0.8, green: 0.6, blue: 1, alpha: 1))
                )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.3), radius: 10, x: 10, y: 10)
    }
}

struct ColorsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorsBootcamp()
            .preferredColorScheme(.dark)
            
            
    }
}
