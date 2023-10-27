import Foundation
import SwiftUI

struct Domino: View {
    
    let a: String
    let b: String
    
    @State var angle: Angle = Angle(degrees: 0)
    
    var shouldRotateText: Bool {
        return abs(angle.degrees) > 45
    }
    
    var body: some View {
        ZStack {
            
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 60)
                    .overlay(
                        Text(a)
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .rotationEffect(Angle(degrees: angle.degrees), anchor: .center)
                    )
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 80, height: 60)
                    .overlay(
                        Text(b)
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .rotationEffect(Angle(degrees: angle.degrees), anchor: .center)
                    )
            }
        }
        .background(Color.black)
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black, lineWidth: 5)
        )
        .rotationEffect(angle)
        .gesture(
            RotationGesture()
                .onChanged { value in
                    angle = value
                    
                }
        )
        
    }}
struct Domino_Previews: PreviewProvider {
    static var previews: some View {
        Domino(a: "3+3", b: "3+3")
    }
}
