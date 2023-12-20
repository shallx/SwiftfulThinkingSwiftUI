import SwiftUI

struct TextViewBootcamp: View {
    @State var listen = "Start Deal"
    @State var showSheet = false
    var body: some View {
        NavigationView {
            ScrollView {
                Text(listen)
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                    .navigationBarHidden(false)
                
                ButtonView(listen: $listen, showSheet: $showSheet)
                    .sheet(isPresented: $showSheet) {
                        Text("Hello Earth!")
                    }
                NavigationLink("Some TItle", destination: Text("Next Destination"))
                
            }
            
            
            
        }
        
        
        
        

    }
}

struct ButtonView: View {
    @Binding var listen: String
    @Binding var showSheet: Bool
    
    var body: some View {
        Button {
            self.listen = "Done Deal"
            showSheet.toggle()
        } label: {
            Text("Touch Me")
                .fontWeight(.bold)
                .padding(.all, 20)
                .background(Color.red)
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                
        }
    }
}

struct TextViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextViewBootcamp()
    }
}
