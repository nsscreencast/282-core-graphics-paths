import UIKit
import PlaygroundSupport

final class CustomView: UIView {
	override func draw(_ rect: CGRect) {
		guard let context = UIGraphicsGetCurrentContext() else { return }

		context.setFillColor(UIColor.white.cgColor)
		context.fill(bounds)

		let path = CGMutablePath()

		// Heart
//		path.move(to: CGPoint(x: 100, y: 100))
//		path.addLine(to: CGPoint(x: 150, y: 150))
//		path.addLine(to: CGPoint(x: 200, y: 100))
//		path.addQuadCurve(to: CGPoint(x: 150, y: 80), control: CGPoint(x: 175, y: 50))
//		path.addQuadCurve(to: CGPoint(x: 100, y: 100), control: CGPoint(x: 125, y: 50))
//		context.addPath(path)
//		context.setLineWidth(10)
//		context.setLineCap(.round)
//		context.setLineJoin(.round)
//		context.setStrokeColor(UIColor.red.cgColor)
//		context.strokePath()

		// Fill rule
//		path.addRect(CGRect(x: 50, y: 50, width: 100, height: 100)) // Fill
//		path.addRect(CGRect(x: 75, y: 75, width: 50, height: 50)) // Remove
//		path.addRect(CGRect(x: 75, y: 100, width: 50, height: 10)) // Fill
//		context.addPath(path)
//		context.setFillColor(UIColor.blue.cgColor)
//		context.fillPath(using: .evenOdd)

		// Combining paths
//		path.addEllipse(in: CGRect(x: 50, y: 50, width: 100, height: 100))
//
//		let path2 = CGMutablePath()
//		path2.move(to: CGPoint(x: 50, y: 50))
//		path2.addLine(to: CGPoint(x: 150, y: 150))
//		path.addPath(path2)
//
//		context.addPath(path)
//		context.setStrokeColor(UIColor.green.cgColor)
//		context.setLineWidth(4)
//		context.strokePath()

		// Stroke sizing
		let rect = CGRect(x: 50, y: 50, width: 100, height: 100)
		let lineWidth: CGFloat = 4
		path.addRect(rect.insetBy(dx: lineWidth / 2, dy: lineWidth / 2))
		context.addPath(path)
		context.setStrokeColor(UIColor.orange.cgColor)
		context.setLineWidth(lineWidth)
		context.strokePath()

		context.setFillColor(UIColor(red: 0, green: 0, blue: 0, alpha: 0.2).cgColor)
		context.fill(rect)
	}
}

PlaygroundPage.current.liveView = CustomView(frame: CGRect(x: 0, y: 0, width: 320, height: 320))
