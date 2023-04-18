import SwiftUI
import MapKit

class EnvironmentViewModel: ObservableObject {
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "Macbook"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.dataArray, id: \.self) {item in
                    NavigationLink(destination: DetailView(selectedItem: item)) {
                        Text(item)
                    }
                }
            }
        }
        // Passes Viewmodel to all the children nested
        .environmentObject(viewModel)
    }
}


struct DetailView: View {
    
    let selectedItem: String
    
    var body: some View {
        ZStack {
            Color.orange.ignoresSafeArea()
            
            NavigationLink(destination: FinalView()) {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundColor(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .cornerRadius(30)
            }
            
        }
    }
}

struct FinalView: View {
    
    // Access globally available viewmodel from ancistor view
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack {
            Color.green.ignoresSafeArea()
            
            ScrollView {
                VStack(spacing: 20) {
                    Text(viewModel.dataArray[0])
                }
                .foregroundColor(.white)
                .font(.largeTitle)
                
            }
        }
    }
}

struct EnvironmentObjectBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectBootcamp()
    }
}
