import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.photos/200")
    var body: some View {
        VStack {
            AsyncImage(url: url) { returnedImage in
                returnedImage
                    .frame(width: 200, height: 200)
                    .scaledToFill()
                    .cornerRadius(26)
            } placeholder: {
                ProgressView()
            }
            
            AsyncImage(url: url) { phase in
                switch phase {
                case .empty:
                    ProgressView()
                case .success(let returnedImage):
                    returnedImage
                        .frame(width: 200, height: 200)
                        .scaledToFill()
                        .cornerRadius(26)
                
                default:
                    Image(systemName: "questionmark")
                }
                
            }
        }

    }
}

struct AsyncImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageBootcamp()
    }
}
