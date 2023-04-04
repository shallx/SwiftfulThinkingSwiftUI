import SwiftUI

struct ListBootcamp: View {
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
//                    .onDelete { index in
//                        fruits.remove(atOffsets: index)
//                    }
                    .onDelete(perform: delete)
                    .onMove { frm, to in
                        fruits.move(fromOffsets: frm, toOffset: to)
                    }
                }
            }
            .navigationTitle("Grocery List")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    EditButton()
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    addButton
                }
            }
//            .navigationBarItems(leading: EditButton())
        }
        
    }
    
    var addButton: some View {
        Button("Add"){
            fruits.append("Coconut")
        }
    }
    
    func delete(indexSet: IndexSet){
        fruits.remove(atOffsets: indexSet)
    }
}

struct ListBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ListBootcamp()
    }
}
