import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    var body: some View {
        Picker(selection: $selection, content: {
            Text("1").tag("1")
            Text("2").tag("2")
            Text("3").tag("3")
        }, label: {
            Text("Picker")
        })
//            .pickerStyle(WheelPickerStyle())
//            .pickerStyle(InlinePickerStyle())
//            .pickerStyle(MenuPickerStyle())
            .pickerStyle(SegmentedPickerStyle())

    }
}

struct PickerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        PickerBootcamp()
    }
}
