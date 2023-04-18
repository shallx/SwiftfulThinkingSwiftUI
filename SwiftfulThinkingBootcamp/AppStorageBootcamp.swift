import SwiftUI

struct AppStorageBootcamp: View {
//    @State var userName: String?
    @AppStorage("name") var userName: String?
    var body: some View {
        VStack {
            Text(userName ?? "Add your name")
            
            Button {
                userName = "Sohel"
//                UserDefaults.standard.set("Rahi", forKey: "name")
            } label: {
                Text("Save")
            }

        }
        .onAppear {
//            userName = UserDefaults.standard.string(forKey: "name")
        }
    }
}

struct AppStorageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageBootcamp()
    }
}
