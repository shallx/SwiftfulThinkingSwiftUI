import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}
struct UserModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Emily", userName: "itsEmily95", followerCount: 65, isVerified: false),
        UserModel(displayName: "Rahi", userName: "itsRahi", followerCount: 40, isVerified: false),
        UserModel(displayName: "Samantha", userName: "itsSamantha", followerCount: 100, isVerified: false),
        UserModel(displayName: "Chris", userName: "itsEmily95", followerCount: 65, isVerified: false)
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 14) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        VStack {
                            Text("\(user.followerCount)")
                                .font(.headline)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    
                }
            }
            .padding(.horizontal, 10)
            .navigationTitle("Users")
        }
    }
}

struct UserModelBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        UserModelBootcamp()
    }
}
