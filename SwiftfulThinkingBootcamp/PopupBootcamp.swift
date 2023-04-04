import SwiftUI

struct PopupBootcamp: View {
    @State var showNewScreen: Bool = false
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            VStack {
                Button("Button") {
                    showNewScreen.toggle()
                }
                .font(.largeTitle)
                Spacer()
            }
//            METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })

            
////            METHOD - 2 - TRANSITION
//            ZStack {
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring())
//                }
//            }
//            .zIndex(2.0)
//            METHOD 3 - ANIMATION OFFSET
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .offset(y: showNewScreen ? 0 : UIScene.main.bounds.height)
        }
        
//
    }
}

struct PopupBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PopupBootcamp()
    }
}

struct NewScreen: View {
    @Binding var showNewScreen: Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
                showNewScreen = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }

        }
    }
}
