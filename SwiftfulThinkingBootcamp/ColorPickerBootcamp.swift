import SwiftUI

struct ColorPickerBootcamp: View {
    @State var backgroundColor: Color = .blue
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding(20)
                .background(.black)
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(50)
        }
    }
}

struct ColorPickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerBootcamp()
    }
}
