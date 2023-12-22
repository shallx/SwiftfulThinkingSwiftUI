import SwiftUI

struct OnAppearBootCamp: View {
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text(myText)
                LazyVStack {
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                            .onDisappear {
                                count -= 1
                            }
                    }
                }
            }
            .navigationTitle("Count: \(count)")
        }
    }
}

struct OnAppearBootCamp_Previews: PreviewProvider {
    static var previews: some View {
        OnAppearBootCamp()
    }
}
