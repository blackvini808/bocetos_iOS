import SwiftUI

struct RenglonColumna2: View{
    var columna_1: String
    var columna_2: String
    
    var body: some View{
        HStack(alignment: .firstTextBaseline){
            Text(columna_1)
                .padding(15)
                .multilineTextAlignment(.trailing)
                .frame(width: 250, alignment: .leading)
                .foregroundStyle(Color.blue)
            Spacer()
            Text(columna_2)
                .padding(.horizontal, 20)
                .foregroundStyle(Color.pink)
        }
    }
}

#Preview {
    RenglonColumna2(columna_1: "PLACEHOLDER", columna_2: "PLACEHOLDER 2")
}
