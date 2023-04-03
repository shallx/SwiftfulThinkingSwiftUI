import SwiftUI

struct ExtractedFunctionsBootcamp: View {
    @State var backgroundColor = Color.pink
    
    var body: some View {
        ZStack {
            backgroundColor.ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    var contentLayer: some View {
        VStack {
            Text("Title")
                .font(.largeTitle)
            Button {
                onButtonPress()
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
    func onButtonPress(){
        backgroundColor = .yellow
    }
}

struct ExtractedFunctionsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ExtractedFunctionsBootcamp()
    }
}
