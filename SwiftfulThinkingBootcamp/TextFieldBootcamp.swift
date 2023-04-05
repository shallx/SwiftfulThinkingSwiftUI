import SwiftUI

struct TextFieldBootcamp: View {
    @State var textFieldText: String = ""
    @State var textEditorText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Type Something here...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                TextEditor(text: $textEditorText)
                    .frame(width: .infinity, height: 48)
                    .colorMultiply(Color.gray.opacity(0.4))
                    .cornerRadius(10)
                
                Button {
                    addText()
                } label: {
                    Text("Save")
                        .padding()
//                        .frame(width: 200)
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue.cornerRadius(10) : Color.gray.cornerRadius(10))
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
//                    .frame(maxWidth: 300)
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                Spacer()
                
            }
            .padding()
            .navigationTitle("TextField Bootcamp")
        }
    }
    
    func textIsAppropriate() -> Bool {
        return textFieldText.count >= 3
    }
    
    func addText() {
        dataArray.append(textFieldText)
        textFieldText = ""
        
    }
}

struct TextFieldBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldBootcamp()
    }
}
