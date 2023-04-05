import SwiftUI

struct ContextMenuBootcamp: View {
    var body: some View {
        VStack {
            Image("house.fill")
                .font(.title)
            Text("Swiftful Thinking")
                .font(.headline)
            Text("How to use custom menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(Color.blue.cornerRadius(26))
        .contextMenu(menuItems: {
            Button {
                //
            } label: {
                Label("Button 1", systemImage: "flame.fill")
            }
            
            Button {
                //
            } label: {
                HStack {
                    Text("Button 2")
                    Image(systemName: "heart.fill")
                }
            }


        })
    }
}

struct ContextMenuBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ContextMenuBootcamp()
    }
}
