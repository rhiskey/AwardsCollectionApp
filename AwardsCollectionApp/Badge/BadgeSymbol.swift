import SwiftUI

struct BadgeSymbol: View {
    static let symbolColor = Color.white

    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            let size = min(width, height)
            
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let middle = size / 2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: farLine))
                
                path.addRelativeArc(center: CGPoint(x: farLine, y: middle), radius: size/8, startAngle: Angle(degrees: 180), delta: Angle(degrees: 180))
                
                path.addRelativeArc(center: CGPoint(x: middle, y: farLine), radius: size/4, startAngle: Angle(degrees: 0), delta: Angle(degrees: 180))
                
                path.addRelativeArc(center: CGPoint(x: nearLine, y: middle), radius: size/8, startAngle: Angle(degrees: 180), delta: Angle(degrees: 180))
            }
            .fill(Self.symbolColor)

        }
    }
}


struct BadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        BadgeSymbol()
    }
}
