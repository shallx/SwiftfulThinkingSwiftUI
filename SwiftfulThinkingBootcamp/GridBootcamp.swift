

import SwiftUI

struct GridBootcamp: View {
    let columns: [GridItem] = [
        GridItem(.fixed(50)),
        GridItem(.flexible(), spacing: 20),
        GridItem(.adaptive(minimum: 40, maximum: 100))
    ]
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 30, pinnedViews: [.sectionHeaders]){
                Section(header: Text("Heading 1")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.red))
                {
                    ForEach(0..<16) { Index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header: Text("Heading 2")
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(.red))
                {
                    ForEach(0..<16) { Index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
            }
        }
    }
}

struct GridBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GridBootcamp()
    }
}
