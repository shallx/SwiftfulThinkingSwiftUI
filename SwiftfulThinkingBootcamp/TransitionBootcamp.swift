import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                
                Button("Button") {
                    showView.toggle()
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 400)
                    .transition(.asymmetric(insertion: AnyTransition.move(edge: .bottom).animation(Animation.easeOut.delay(0.5)), removal: AnyTransition.opacity.animation(.easeOut)))
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TransitionBootcamp()
    }
}
