import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        VStack(){
            Circle()
                .foregroundColor(.green)
                .frame(width: 100, height: 100, alignment: .leading)
            Circle()
                .strokeBorder(Color.purple, style: StrokeStyle(lineWidth: 5, lineCap: .butt, lineJoin: .bevel, miterLimit: 5, dash: [10], dashPhase: 20))
                .frame(width: 100, height: 100, alignment: .leading)
            Circle()
                .trim(from: 0.2, to: 1)
                .stroke(Color.red, lineWidth: 10)
                .frame(width: 100, height: 100, alignment: .leading)
            Ellipse()
                .stroke(lineWidth: 4)
                .frame(width: 180, height: 100, alignment: .leading)
            Capsule(style: .circular)
                .fill(.purple)
                .frame(width: 140, height: 80, alignment: .leading)
            RoundedRectangle(cornerRadius: 5)
                .trim(from: 0.4, to: 1)
                .frame(width: 140, height: 80)
        }
        
        
    }
}

struct ShapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ShapesBootcamp()
    }
}
