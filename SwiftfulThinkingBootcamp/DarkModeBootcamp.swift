import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Primary Color")
                    .foregroundColor(.primary)
                Text("Secondary Color")
                    .foregroundColor(.secondary)
                Text("Locall adaptive color")
                    .foregroundColor(colorScheme == .light ? .green : .yellow)
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
