import SwiftUI

struct BindingBootcamp: View {
    @State var backgroundColor = Color.pink
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            ButtonWidget(backgroundColor: $backgroundColor)
        }
    }
}

struct BindingBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BindingBootcamp()
    }
}

struct ButtonWidget: View {
    @Binding var backgroundColor: Color
    var body: some View {
        Button {
            backgroundColor = .yellow
        } label: {
            Text("Press Me")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(.black)
                .cornerRadius(10)
        }
    }
}
