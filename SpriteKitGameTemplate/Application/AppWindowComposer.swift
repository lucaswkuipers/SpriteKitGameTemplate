import UIKit

final class AppWindowComposer {
    static func makeWindow() -> UIWindow {
        let window = UIWindow(frame: Device.bounds)
        window.rootViewController = GameComposer.makeScene()
        window.makeKeyAndVisible()
        return window
    }
}
