import SwiftUI

struct ToggleBootcamp: View {
    @State var toggleIsOn: Bool = false
    var body: some View {
        VStack {
            Text("Status: \(toggleIsOn ? "Online" : "Offline")")
            Toggle("Dark Mode", isOn: $toggleIsOn)
                .toggleStyle(SwitchToggleStyle(tint: Color.pink))
        }
        .padding(.horizontal, 80)
    }
}

struct ToggleBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ToggleBootcamp()
    }
}
