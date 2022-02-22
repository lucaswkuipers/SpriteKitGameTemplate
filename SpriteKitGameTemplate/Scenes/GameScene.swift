import CoreGraphics
import SpriteKit

protocol GameSceneDelegate: AnyObject {}

final class GameScene: SKScene {
    weak var gameDelegate: GameSceneDelegate?
}

extension GameScene: GameSceneProtocol {}
