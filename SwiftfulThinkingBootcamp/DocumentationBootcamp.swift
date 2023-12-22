import SwiftUI

struct DocumentationBootcamp: View {
    
    var range: [Int] = [1,2,3,4]
    
    // MARK: BODY
    var body: some View {
        
        // MARK: NAVIGATION_VIEW
        NavigationView {
            ZStack {
                Color.gray.ignoresSafeArea().opacity(0.3)
                
                Mainbody(range: range)
            }
        }
        
    }
}


// MARK: Preview
struct DocumentationBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        DocumentationBootcamp()
    }
}

/// This is a simple title
///
/// This is description section
/// You can write multiple line
///
/// ```
///  MainBody() -> View
/// ```
///
/// - Warning: This is a warning message
/// - Parameter text: If you have a param, provide here
/// - Returns: Returns a View
struct Mainbody: View {
    var range: [Int]
    
    var body: some View {
        ScrollView {
            ForEach(range, id: \.self){ num in
                Text("\(num)")
            }
        }
        .navigationTitle(Text("Navigation Bootcamp"))
    }
}
