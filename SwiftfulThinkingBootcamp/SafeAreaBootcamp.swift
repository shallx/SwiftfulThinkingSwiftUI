import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ScrollView {
            VStack {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(width: .infinity, alignment: .leading)
                ForEach(0..<14){ index in
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(color: .black.opacity(0.3), radius: 4, x: 4, y: 4)
                        .padding()
            }
        }
        
        
        }.background(
            Color.red
                .ignoresSafeArea()
        )
        
    }
}

struct SafeAreaBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafeAreaBootcamp()
    }
}
