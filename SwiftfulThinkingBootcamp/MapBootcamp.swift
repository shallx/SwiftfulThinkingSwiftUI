import MapKit
import SwiftUI

struct MapBootcamp: View {
    @State var region = MKCoordinateRegion(center: .init(latitude: 24.3796775, longitude: 88.5988492), latitudinalMeters: 300, longitudinalMeters: 300)
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        MapBootcamp()
    }
}
