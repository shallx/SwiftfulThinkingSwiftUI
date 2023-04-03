import SwiftUI

struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    var body: some View {
        VStack {
            Button("Button") {
                withAnimation {
                    isAnimated.toggle()
                }
            }
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: isAnimated ? 50 : 25)
                    .fill(isAnimated ? .green : .blue)
                    .frame(width: isAnimated ? 100 : 300, height: isAnimated ? 100 : 300 )
                    .rotationEffect(Angle(degrees: isAnimated ? 360 : 0))
                    
                Text("Click").foregroundColor(.white).fontWeight(.heavy).font(.largeTitle)
                
            }
            .offset(y: isAnimated ? 300 : 0)
            
            Spacer()
        }
    }
}

struct AnimationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AnimationBootcamp()
    }
}
