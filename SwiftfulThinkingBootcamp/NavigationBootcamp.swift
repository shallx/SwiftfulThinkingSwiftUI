import SwiftUI

struct NavigationBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("All Inbox", destination: MyOtherScreen())
                Text("Message from Elon Musk")
                Text("Message from Donald Trump")
            }
            .navigationTitle("Second Screen")
            .navigationBarItems(leading: Image(systemName: "person.fill"), trailing: Image(systemName: "gear"))
        }
        
    }
}

struct NavigationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBootcamp()
    }
}

struct MyOtherScreen: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click Here", destination: Text("SOmewhere"))
            }
        }
        
    }
}
