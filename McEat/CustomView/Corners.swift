//
//  Corners.swift
//  McEat
//
//  Created by Rivaldo Fernandes on 21/05/22.
//

import SwiftUI


struct Corners: View {
    var color: Color = .blue
    var tl: CGFloat = 0.0
    var tt: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var bt: CGFloat = 0.0
    
    
    var body: some View {
        GeometryReader { geo in
            Path { path in
                
                let w = geo.size.width
                let h = geo.size.height
                
                //limit size under the maximum size
                let tl = min(min(self.tl, h/2), w/2)
                let tt = min(min(self.tt, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let bt = min(min(self.bt, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                                path.addLine(to: CGPoint(x: w - tt, y: 0))
                                path.addArc(center: CGPoint(x: w - tt, y: tt), radius: tt, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                                path.addLine(to: CGPoint(x: w, y: h - bt))
                                path.addArc(center: CGPoint(x: w - bt, y: h - bt), radius: bt, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                                path.addLine(to: CGPoint(x: bl, y: h))
                                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                                path.addLine(to: CGPoint(x: 0, y: tl))
                                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                                path.closeSubpath()
            }
            .fill(color)
        }
    }
}


struct RadialCorners: View {
    var radGrad: RadialGradient
    var tl: CGFloat = 0.0
    var tt: CGFloat = 0.0
    var bl: CGFloat = 0.0
    var bt: CGFloat = 0.0
    
    
    var body: some View {
        GeometryReader { geo in
            let paths = Path { path in
                
                let w = geo.size.width
                let h = geo.size.height
                
                //limit size under the maximum size
                let tl = min(min(self.tl, h/2), w/2)
                let tt = min(min(self.tt, h/2), w/2)
                let bl = min(min(self.bl, h/2), w/2)
                let bt = min(min(self.bt, h/2), w/2)
                
                path.move(to: CGPoint(x: w / 2.0, y: 0))
                                path.addLine(to: CGPoint(x: w - tt, y: 0))
                                path.addArc(center: CGPoint(x: w - tt, y: tt), radius: tt, startAngle: Angle(degrees: -90), endAngle: Angle(degrees: 0), clockwise: false)
                                path.addLine(to: CGPoint(x: w, y: h - bt))
                                path.addArc(center: CGPoint(x: w - bt, y: h - bt), radius: bt, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: 90), clockwise: false)
                                path.addLine(to: CGPoint(x: bl, y: h))
                                path.addArc(center: CGPoint(x: bl, y: h - bl), radius: bl, startAngle: Angle(degrees: 90), endAngle: Angle(degrees: 180), clockwise: false)
                                path.addLine(to: CGPoint(x: 0, y: tl))
                                path.addArc(center: CGPoint(x: tl, y: tl), radius: tl, startAngle: Angle(degrees: 180), endAngle: Angle(degrees: 270), clockwise: false)
                                path.closeSubpath()
            }
            
            paths.fill(radGrad).overlay(paths.stroke(.black, lineWidth: 2))
        }
    }
}

struct CustomShapeRounded: Shape {
    var corners: UIRectCorner
    var radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        
        return Path(path.cgPath)
    }
}

