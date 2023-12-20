import SwiftUI

struct TransitionBootcamp: View {
    @State var showView: Bool = false
    var body: some View {
        ZStack(alignment: .bottom) {
            VStack {
                
                Button("Button") {
                    
                    withAnimation {
                        showView.toggle()
                    }
                }
                Spacer()
            }
            
            
            if showView {
                RoundedRectangle(cornerRadius: 16)
                    .frame(height: 400)
//                    .transition(.move(edge: .bottom))
                    .transition(AnyTransition.opacity.animation(.default))
//                    .transition(AnyTransition.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .top)))
//                    .animation(.default)
            }
        }
        .edgesIgnoringSafeArea(.bottom)
        
        
    }
}

struct TransitionBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TransitionBootcamp()
        }
    }
}
