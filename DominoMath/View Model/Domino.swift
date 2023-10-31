import Foundation
import SwiftUI

struct Domino: View {
    
    //rotation
    @State var angle: Angle = Angle(degrees: 0)
    
    //drag
    @State private var location: CGPoint = CGPoint(x: 50, y: 50)
    
    var shouldRotateText: Bool {
        return abs(angle.degrees) > 45
    }
    
    //var model
    var domino: DominoModel
    
    var body: some View {
        ZStack {
            
            VStack {
                Rectangle()
                    .fill(Color.blue)
                    .frame(width: 80, height: 60)
                    .overlay(
                        Text(domino.ladoATexto)
                            .font(.title2)
                            .foregroundColor(Color.black)
                            .rotationEffect(Angle(degrees: angle.degrees), anchor: .center)
                    )
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 80, height: 60)
                    .overlay(
                        Text(domino.ladoBTexto)
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
        //DominoRotation
        .rotationEffect(angle)
        .gesture(
            RotationGesture()
                .onChanged { value in
                    angle = value
                    }
        )
        //DominoDrag
        .position(location)
        .simultaneousGesture(
            DragGesture(minimumDistance: 0)
                .onChanged { value in
                    self.location = value.location
                }
                .onEnded { value in
                    print("onEnded")
                }
        )
        
    }}

struct Domino_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            List(dominoes) { dominoset in
                Domino(domino: dominoset)
            }
        }
    }
}
