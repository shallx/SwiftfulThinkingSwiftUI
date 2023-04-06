import SwiftUI

struct DatePickerBootcamp: View {
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018))!
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.timeStyle = .short
        return formatter
    }
    var body: some View {
        VStack {
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date, .hourAndMinute])
                .accentColor(Color.red)
                .datePickerStyle(
//                    WheelDatePickerStyle()
                    CompactDatePickerStyle()
//                    GraphicalDatePickerStyle()
            )
                .padding()
        }
    }
}

struct DatePickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerBootcamp()
    }
}
