//import SwiftUI
//
//struct FocusState: View {
//
//    @FocusState private var usernameInFocus: Bool
//    @State private var username: String = ""
//    var body: some View {
//        VStack {
//            TextField("Add your name here...", text: $username)
//                .focused($usernameInFocus)
//                .padding(.horizontal)
//                .frame(height: 55)
//                .background(Color.gray.brightness(0.3))
//                .cornerRadius(10)
//
//            Button("Toggle Focus State") {
//                usernameInFocus.toggle()
//            }
//        }
//    }
//}
//
//struct FocusState_Previews: PreviewProvider {
//    static var previews: some View {
//        FocusState()
//    }
//}
