import UIKit

enum Device {
    static let bounds = UIScreen.main.bounds

    static let size = bounds.size
    static let width = bounds.width
    static let height = bounds.height

    static let halfWidth = width / 2
    static let halfHeight = height / 2

    static let center = CGPoint(x: halfWidth, y: halfHeight)

    static let centerBottom = CGPoint(x: halfWidth, y: 0)
    static let centerTop = CGPoint(x: halfWidth, y: height)
    static let centerLeft = CGPoint(x: 0, y: halfHeight)
    static let centerRight = CGPoint(x: width, y: halfHeight)
    static let topLeft = CGPoint(x: 0, y: height)
    static let bottomLeft = CGPoint(x: 0, y: 0)
    static let topRight = CGPoint(x: width, y: height)
    static let bottomRight = CGPoint(x: width, y: 0)
}
