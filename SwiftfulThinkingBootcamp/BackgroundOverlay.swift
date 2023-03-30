import SwiftUI

struct BackgroundOverlay: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .background(
    //                Color.red
    //                LinearGradient(gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1))]), startPoint: .leading, endPoint: .trailing)
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 140, height: 140, alignment: .center)
                )
                .background(
                    Circle()
                        .fill(Color.green)
                        .frame(width: 170, height: 170, alignment: .center))
            Circle()
                .fill(.pink)
                .frame(width: 160, height: 160)
                .overlay(starOverlay, alignment: .center)
            starBtn
        }
        
    }
    
    private var starOverlay: some View {
            Image(systemName: "star")
            .resizable()
            .frame(width: 80, height: 80)
        .foregroundColor(.white)
        .padding([.top, .trailing], 5)
        }
    
    private var starBtn: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)
            .frame(width: 100, height: 100)
            .background(
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .shadow(color: Color.purple, radius: 10, x: 4, y: 4)
                    .overlay(
                        Circle()
                            .fill(.green)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: Color.purple, radius: 10, x: 4, y: 4),
                        alignment: .bottomTrailing
                    )
            )
    }
}

struct BackgroundOverlay_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundOverlay()
    }
}
