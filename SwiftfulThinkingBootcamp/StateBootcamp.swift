import SwiftUI

struct StateBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var count: Int = 0
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                Text("Some TItle")
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                
                HStack(spacing: 20){
                    Button("Add"){
                        backgroundColor = Color.red
                        self.count+=1
                    }
                    
                    Button("Sub"){
                        backgroundColor = Color.yellow
                        self.count-=1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        StateBootcamp()
    }
}
