import SwiftUI

struct TextViewBootcamp: View {

    @State var date: Date = Date()
    @State var steps: Int = 4
    
    var dateFormatter : DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        NavigationView {
            
            ScrollView {
                Text(dateFormatter.string(from: date))
                DatePicker("Today's Date", selection: $date)
                    .datePickerStyle(WheelDatePickerStyle())
                Text("Steps: \(steps)")
//                Stepper("My Stepper", value: $steps)
                Stepper("Steps") {
                    steps += 10
                } onDecrement: {
                    steps -= 10
                    if steps < 0 {
                        steps = 0
                    }
                }

            }
            .navigationTitle("Date Picker Test")
            
            

            
        }
        
    }
}


struct TextViewBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextViewBootcamp()
    }
}
