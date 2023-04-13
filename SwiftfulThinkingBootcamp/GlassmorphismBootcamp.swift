import SwiftUI

struct GlassmorphismBootcamp: View {
    var body: some View {
        ZStack{
            LinearGradient(colors: [Color("BG1"), Color("BG2")], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            Circle()
                .fill(.green)
                .padding(.all, 40)
            GeometryReader { proxy in
                let size = proxy.size
                
                Color.black
                    .opacity(0.7)
                    .blur(radius: 200)
                    .ignoresSafeArea()
                
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 120)
                    .offset(x: -size.width/1.8, y: -size.height/5)
                
                Circle()
                    .fill(Color("LightBlue"))
                    .blur(radius: 140)
                    .offset(x: size.width/1.8, y: -size.height/2)
                
                Circle()
                    .fill(Color("LightBlue"))
                    .blur(radius: 90)
                    .offset(x: size.width/1.8, y: size.height/2)
                
                Circle()
                    .fill(Color.purple)
                    .padding(50)
                    .blur(radius: 90)
                    .offset(x: -size.width/1.8, y: size.height/2)
            }
            VStack {
                HStack {
                    Text("Good")
                    Spacer()
                    Text("Morning")
                    Spacer()
                    Text("Earth")
                }
                .padding()
//                .foregroundStyle(LinearGradient(colors: [.blue,.indigo], startPoint: .top, endPoint: .bottom))
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 12, style: .continuous))
            }
            .padding(.horizontal,20)
        }
    }
}

struct GlassmorphismBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GlassmorphismBootcamp()
    }
}
