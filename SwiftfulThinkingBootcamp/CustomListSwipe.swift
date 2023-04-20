import SwiftUI

struct CustomListSwipe: View {
    let fruits: [String] = ["Apple", "Orange", "Bananna"]
    var body: some View {
            List {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit)
                        .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                            Button {
                                //
                            } label: {
                                Text("Action")
                            }
                            .tint(.red)
                            Button("Delete"){
                                
                            }
                            .tint(.blue)

                        }
                }
            }
            
    }
}

struct CustomListSwipe_Previews: PreviewProvider {
    static var previews: some View {
        CustomListSwipe()
    }
}
