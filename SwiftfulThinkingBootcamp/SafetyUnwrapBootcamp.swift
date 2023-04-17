import SwiftUI

struct SafetyUnwrapBootcamp: View {
    
    
    @State var cUserId: Int? = 12
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                if isLoading {
                    ProgressView()
                }
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let userId = cUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is new user \(userId)"
                isLoading = false
            }
        } else {
            displayText = "Error!! There is no user ID!"
        }
        
    }
    
    func loadData2() {
        guard let userId = cUserId else {
            displayText = "Error. There is no user id!"
            return
        }
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displayText = "This is new user \(userId)"
            isLoading = false
        }
    }
}

struct SafetyUnwrapBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SafetyUnwrapBootcamp()
    }
}
