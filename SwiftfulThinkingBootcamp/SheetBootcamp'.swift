import SwiftUI

struct SheetBootcamp_: View {
    @State var showSheet: Bool = false
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Open Sheet")
                    .padding()
                    .background()
                    .cornerRadius(26)
            }
//            .fullScreenCover(isPresented: $showSheet,content: {
//                SecondSreen()
//            })
            .sheet(isPresented: $showSheet,content: {
                SecondSreen()
            })

        }
    }
}

struct SecondSreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red.ignoresSafeArea()
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .font(.headline)
                    .padding(20)
            }

        }
    }
}

struct SheetBootcamp__Previews: PreviewProvider {
    static var previews: some View {
        SheetBootcamp_()
    }
}
