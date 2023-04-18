import SwiftUI
import MapKit

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

// @StateObject or @ObservedObject demands the class to be ObservableObject
class FruitViewModel: ObservableObject {
    // Published is equivalent to @State but for class ViewModel
    @Published var fruitsArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 13)
        let fruit2 = FruitModel(name: "Bananna", count: 14)
        let fruit3 = FruitModel(name: "Watermellon", count: 54)
        
        isLoading = true
        print("I am here")
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("Executed")
            self.fruitsArray.append(fruit1)
            self.fruitsArray.append(fruit2)
            self.fruitsArray.append(fruit3)
            self.isLoading = false
        }
        
    }
    
    func deleteFruit(index: IndexSet){
        fruitsArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    // @StateObject for first ViewModel, the original, on creation
    // @ObservedObject is used for subviews or children
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationView {
            if fruitViewModel.isLoading {
                ProgressView()
            } else {
                List {
                    ForEach(fruitViewModel.fruitsArray) { fruit in
                        HStack {
                            Text("\(fruit.count)")
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                .listStyle(GroupedListStyle())
                .navigationTitle("Fruit List")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink(destination: RandomScreen(fruitViewMode: fruitViewModel)) {
                            Image(systemName: "arrow.right")
                                .font(.title)
                        }
                    }
                }
            }
            
        }
    }
    
}

struct RandomScreen: View {
    // presentationMode for back button
    @Environment(\.presentationMode) var presentationMode
    // Will be passed,
    @ObservedObject var fruitViewMode: FruitViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            VStack {
                ForEach(fruitViewMode.fruitsArray) {fruit in
                    Text(fruit.name)
                }
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Go Back")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                
            }
            

        }
    }
}

struct ViewModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ViewModelBootcamp()
//        RandomScreen()
    }
}
