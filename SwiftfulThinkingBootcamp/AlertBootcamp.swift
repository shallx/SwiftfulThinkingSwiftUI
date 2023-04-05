import SwiftUI

struct AlertBootcamp: View {
    @State var showAlrt: Bool = false
    @State var backgroundColor: Color = .yellow
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            Button("Button"){
                showAlrt = true;
            }
            .alert(isPresented: $showAlrt, content: getAlert)

        }
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text("This is title"), message: Text("This is message"), primaryButton: .cancel(), secondaryButton: .destructive(Text("Delete"), action: {
            backgroundColor = .pink
        }))
    }
}

struct AlertBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AlertBootcamp()
    }
}
