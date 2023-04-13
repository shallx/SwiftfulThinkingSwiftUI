import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    var body: some View {
        VStack {
            Text("Rating")
            Text(String(format: "%.0f", sliderValue))
//            Slider(value: $sliderValue)
//            Slider(value: $sliderValue, in: 1...10)
//            Slider(value: $sliderValue, in: 1...5, step: 1)
            Slider(value: $sliderValue, in: 1...5, label:{
                Text("Slider")
            }) {
                Text("1")
            } maximumValueLabel: {
                Text("5")
            } onEditingChanged: { _ in
                color = .green
            }

        }
        .padding()
    }
}

struct SliderBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SliderBootcamp()
    }
}
