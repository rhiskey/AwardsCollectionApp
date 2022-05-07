//
//  CustomAchievement.swift
//  AwardsCollectionApp
//
//  Created by Владимир Киселев on 07.05.2022.
//

import SwiftUI

struct CustomAchievement: View {
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
                
//                path.addRelativeArc(center: CGPoint(x: middle, y: nearLine), radius: size/8, startAngle: Angle(degrees: 0), delta: Angle(degrees: 360))
                
//                path.addQuadCurve(
//                    to: CGPoint(x: farLine, y: middle),
//                    control: CGPoint(x: size, y: 0)
//                )
//                path.addQuadCurve(
//                    to: CGPoint(x: middle, y: farLine),
//                    control: CGPoint(x: size, y: size)
//                )
//                path.addQuadCurve(
//                    to: CGPoint(x: nearLine, y: middle),
//                    control: CGPoint(x: 0, y: size)
//                )
//                path.addQuadCurve(
//                    to: CGPoint(x: middle, y: nearLine),
//                    control: CGPoint(x: 0, y: 0)
//                )
                
            }
            .fill(
                RadialGradient(
                    gradient: Gradient(colors: [.purple, .green, .blue]),
                    center: .center,
                    startRadius: size * 0.01,
                    endRadius: size * 0.7
                )
            )
            
//            Path { path in
//                path.addArc(
//                    center: CGPoint(x: nearLine, y: nearLine),
//                    radius: middle,
//                    startAngle: .degrees(90),
//                    endAngle: .degrees(0),
//                    clockwise: true
//                )
//                path.addArc(
//                    center: CGPoint(x: farLine, y: nearLine),
//                    radius: middle,
//                    startAngle: .degrees(180),
//                    endAngle: .degrees(90),
//                    clockwise: true
//                )
//                path.addArc(
//                    center: CGPoint(x: farLine, y: farLine),
//                    radius: middle,
//                    startAngle: .degrees(270),
//                    endAngle: .degrees(180),
//                    clockwise: true
//                )
//                path.addArc(
//                    center: CGPoint(x: nearLine, y: farLine),
//                    radius: middle,
//                    startAngle: .degrees(0),
//                    endAngle: .degrees(270),
//                    clockwise: true
//                )
//                path.closeSubpath()
//            }
//            .stroke(Color.orange, lineWidth: 2)
        }
    }
}

struct CustomAchievement_Previews: PreviewProvider {
    static var previews: some View {
        CustomAchievement()
    }
}
