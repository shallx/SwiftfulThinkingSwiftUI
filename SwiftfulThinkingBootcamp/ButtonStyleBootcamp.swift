
import SwiftUI

struct ButtonStyleBootcamp: View {
    var body: some View {
        VStack {
            Button("Button") {}
            .frame(height: 55)
            .buttonStyle(.plain)
            
            Button("Button") {}
            .frame(height: 55)
            .buttonStyle(.borderless)
            
            Button("Button") {}
            .frame(height: 55)
            .buttonStyle(.bordered)
            
            Button("Button") {}
            .frame(height: 55)
            .buttonStyle(.borderedProminent)
            
            Button("Button") {}
            .frame(height: 55)
            .buttonStyle(.automatic)
            
            HStack {
                Button("Button") {}
                .frame(height: 55)
                .buttonStyle(.borderedProminent)
                .controlSize(.large)
                
                Button("Button") {}
                .frame(height: 55)
                .buttonStyle(.borderedProminent)
                .controlSize(.mini)
                
                Button("Button") {}
                .frame(height: 55)
                .buttonStyle(.borderedProminent)
                .controlSize(.small)
            }
            Button {
                //
            } label: {
                Text("Button")
                    .frame(maxWidth: .infinity)
                    .frame(height: 55)
            }
            .buttonStyle(.borderedProminent)
//            .buttonBorderShape(.roundedRectangle)
//            .buttonBorderShape(.roundedRectangle(radius: 26))
            .buttonBorderShape(.capsule)
            .padding()
            
            

            
        }
    }
}

struct ButtonStyleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStyleBootcamp()
    }
}
