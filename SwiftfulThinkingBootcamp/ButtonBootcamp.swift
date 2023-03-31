
import SwiftUI

struct ButtonBootcamp: View {
    @State var title:String = "Some title"
    var body: some View {
        VStack(spacing: 10) {
            Text(title)
            Button("Press me now"){
                self.title = "Button was pressed"
            }
            
            Button {
                self.title = "Changed"
            } label: {
                Text("SAVE")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(12)
                    .background(Color.blue)
                    .cornerRadius(6)
                    .shadow(radius:6)
                    
            }
            
            Button {
                self.title = "Finished"
            } label: {
                Text("Finish".uppercased())
                    .font(.caption)
//                    .foregroundColor(.gray)
                    .bold()
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(.gray, lineWidth: 2.0)
                    )
            }

            

        }
        .foregroundColor(.black)
    }
}

struct ButtonBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBootcamp()
    }
}
